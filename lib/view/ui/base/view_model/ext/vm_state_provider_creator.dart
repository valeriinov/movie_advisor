import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'vm_auto_dispose_family_state_provider.dart';
import 'vm_auto_dispose_state_provider.dart';
import 'vm_regular_state_provider.dart';
import '../base_state.dart';

/// {@category StateManagement}
///
/// AutoDispose State Provider.
///
/// Alias for [VMAutoDisposeStateProvider].
typedef ASP<N extends AutoDisposeNotifier<S>, S extends BaseState>
    = VMAutoDisposeStateProvider<N, S>;

/// {@category StateManagement}
///
/// AutoDispose Family State Provider.
///
/// Alias for [VMAutoDisposeFamilyStateProvider].
typedef AFSP<N extends AutoDisposeFamilyNotifier<S, A>, S extends BaseState, A>
    = VMAutoDisposeFamilyStateProvider<N, S, A>;

/// {@category StateManagement}
///
/// Regular State Provider.
///
/// Alias for [VMRegularStateProvider].
typedef RSP<N extends Notifier<S>, S extends BaseState>
    = VMRegularStateProvider<N, S>;

/// An extension on [WidgetRef] that provides a convenient way to create
/// [ViewModelStateProvider] instances.
///
/// Example:
/// ```dart
/// final vsp =
///   ref.vspFromADProvider<MyViewModel, MyState>(myViewModelProvider);
///
/// bool isLoading = vsp.isLoading;
///
/// vsp.handleState(listener: (prevState, newState) {
///   if (newState.someCondition) {
///     vsp.viewModel.someMethod();
///   }
/// });
/// ```
extension VMStateProviderCreator on WidgetRef {
  /// Creates a ViewModel Notifier State Provider instance [VMAutoDisposeStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [AutoDisposeNotifierProvider], which ensures
  /// that the associated state is automatically disposed of when no longer used.
  /// This method is suitable for view models with a shorter lifecycle that should be
  /// disposed of automatically when the widget leaves the widget tree.
  ASP<N, S>
      vspFromADProvider<N extends AutoDisposeNotifier<S>, S extends BaseState>(
          AutoDisposeNotifierProvider<N, S> provider) {
    return ASP<N, S>(ref: this, provider: provider);
  }

  /// Creates a ViewModel Notifier State Provider instance [VMAutoDisposeFamilyStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [AutoDisposeFamilyNotifierProvider], which
  /// supports dynamic initialization based on the argument [A]. Like [AutoDisposeNotifierProvider],
  /// it ensures automatic disposal of the state. This method is particularly useful when
  /// state initialization depends on an input argument that varies per instance.
  AFSP<N, S, A> vspFromADFProvider<
      N extends AutoDisposeFamilyNotifier<S, A>,
      S extends BaseState,
      A>(AutoDisposeFamilyNotifierProvider<N, S, A> provider) {
    return AFSP<N, S, A>(ref: this, provider: provider);
  }

  /// Creates a ViewModel Notifier State Provider instance [VMRegularStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [NotifierProvider], which does not provide
  /// automatic disposal of the state. This method is suitable for managing global view models
  /// or state that needs to persist throughout the application's lifecycle. Ensure proper
  /// disposal management manually if required.
  RSP<N, S> vspFromRProvider<N extends Notifier<S>, S extends BaseState>(
      NotifierProvider<N, S> provider) {
    return RSP<N, S>(ref: this, provider: provider);
  }
}

/// {@category StateManagement}
///
/// A base class that wraps around a Riverpod state notifier provider to offer
/// convenience methods for handling and accessing state and its associated view model.
///
/// This class is meant to be used with the [VMStateProviderCreator] extension.
abstract base class ViewModelStateProvider<N, S extends BaseState, P> {
  final WidgetRef ref;
  final P provider;

  ViewModelStateProvider({required this.ref, required this.provider});

  /// Returns the current status of the state.
  ///
  /// This getter provides access to the current status of the state,
  /// which is an instance of a class extending [BaseStatus]. It allows checking
  /// the loading status, presence of errors, and other state-specific information.
  BaseStatus get status;

  /// Whether the state is currently in a loading phase.
  bool get isLoading;

  /// Whether the state has been initialized.
  bool get isInitialized;

  /// Whether the current state includes an error.
  bool get hasError;

  /// Returns the instance of the view model associated with the provider.
  ///
  /// This getter provides direct access to the view model, which is
  /// the [StateNotifier] managing the state. It is useful for
  /// invoking methods defined in the view model directly from the UI layer.
  N get viewModel;

  /// Retrieves the current state snapshot from the view model without
  /// causing the widget to rebuild. This getter is ideal for one-time
  /// reads where the latest state is required but there is no need
  /// to react to subsequent state changes. It is useful for obtaining
  /// values that are needed momentarily and do
  /// not require continuous monitoring.
  S get stateRead;

  /// Observes the current state and triggers a widget rebuild whenever
  /// the state changes. This getter is essential for creating
  /// responsive UIs that need to update in real-time as the state evolves.
  /// It facilitates a reactive approach to state management,
  /// ensuring that the UI always reflects the most recent state.
  S get stateWatch;

  /// Selects and watches a specific part of the state.
  ///
  /// The [selector] parameter is a function that takes the state as an argument
  /// and returns a part of it. This allows for more focused and efficient state management
  /// by enabling the widget to rebuild only when the selected part of the state changes.
  T selectWatch<T>(T Function(S) selector);

  /// Selects and reads a specific part of the state.
  ///
  /// The [selector] parameter is a function that takes the state as an argument
  /// and returns a part of it. This method is suitable for accessing a specific part
  /// of the state for one-time reads, as it does not cause the widget to rebuild
  /// when the state changes. It's ideal for obtaining values that do not require
  /// constant monitoring for changes.
  T selectRead<T>(T Function(S) selector);

  /// Handles state changes.
  ///
  /// The [listener] parameter is the callback function triggered on state
  /// changes. It receives the previous and current state, enabling custom
  /// responses to these changes.
  void handleState({required void Function(S?, S) listener});
}

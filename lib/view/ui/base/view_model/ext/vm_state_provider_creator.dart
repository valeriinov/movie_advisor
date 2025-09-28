import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base_state.dart';
import 'vm_auto_dispose_state_provider.dart';

/// {@category StateManagement}
///
///  State Provider.
///
/// Alias for [VMStateProvider].
typedef VSP<N extends Notifier<S>, S extends BaseState> = VMStateProvider<N, S>;

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
  /// Creates a ViewModel Notifier State Provider instance [VMStateProvider]
  /// using the given [provider].
  VSP<N, S> vspFromADProvider<N extends Notifier<S>, S extends BaseState>(
    NotifierProvider<N, S> provider,
  ) {
    return VSP<N, S>(ref: this, provider: provider);
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

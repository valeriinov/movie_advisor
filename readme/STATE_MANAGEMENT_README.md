# State Management

- [State Management](#state-management)
    - [Overview](#overview)
    - [Core Components](#core-components)
        - [Base Classes](#base-classes)
            - [BaseStatus](#basestatus)
            - [BaseState](#basestatet-extends-basestatus)
            - [BaseStatusHandler](#basestatushandler)
        - [Extensions](#extensions)
            - [VMStateProviderCreator](#vmstateprovidercreator)
            - [StateComparator](#statecomparator)
            - [Usage Extensions](#usage-extensions)
        - [Utilities](#utilities)
            - [SafeOperationsMixin](#safeoperationsmixin)
            - [ScheduleOperationsMixin](#scheduleoperationsmixin)

## Overview

In this project, the `MVVM (Model-View-ViewModel)` architectural pattern is used for state
management, leveraging the [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) library for
efficient and reactive state handling. To enhance usability and consistency, foundational classes
and extensions have been added.

## Core Components

### Base Classes

#### BaseStatus

An abstract base class for defining the status of a state. This class includes properties for
loading status and error messages.

- `isInitialized`: Indicates if the status is initialized.
- `isLoading`: Indicates if the status is currently loading.
- `errorMessage`: Optional error message for error states.

Key Feature:

- `hasError`: Returns `true` if an error message is present.

#### BaseState<T extends BaseStatus>

An abstract base class representing a generic state with a status.
The `status` getter provides the current status of the state, which
must be an instance of a class extending `BaseStatus`.

**Usage BaseState With ViewModel:**

```dart
// auth_state.dart

/// Represents the state of a view model, extending [BaseState] with a [AuthStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class AuthState extends BaseState<AuthStatus> with AuthStateMappable {
  final AuthFormState formState;

  @override
  final AuthStatus status;

  const AuthState({
    this.formState = const AuthFormState(),
    this.status = const AuthBaseStatus(),
  });
}

/// A sealed class representing the possible statuses of a [AuthState].
/// Provides properties for loading, initialization, and error handling.
sealed class AuthStatus extends BaseStatus {
  const AuthStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// Represents the initial or uninitialized status of a [AuthState].
/// Used before it has completed its setup.
@mappableEntity
final class AuthBaseStatus extends AuthStatus with AuthBaseStatusMappable {
  const AuthBaseStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// Represents the neutral or idle status of a [AuthState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class AuthBaseInitStatus extends AuthStatus
    with AuthBaseInitStatusMappable {
  const AuthBaseInitStatus({super.isLoading, super.errorMessage, super.isInitialized = true});
}

@mappableEntity
final class AuthSuccessStatus extends AuthStatus
    with AuthSuccessStatusMappable {
  const AuthSuccessStatus({super.isLoading, super.errorMessage, super.isInitialized = true});
}

// auth_view_model.dart

/// A provider for the [AuthViewModel] class.
final authViewModelPr =
AutoDisposeNotifierProvider<AuthViewModel, AuthState>(AuthViewModel.new);

/// A view model for managing `auth`-specific logic and state.
///
/// This class is responsible for coordinating `auth` behavior and interacting with the UI.
class AuthViewModel extends AutoDisposeNotifier<AuthState>
    with SafeOperationsMixin {
  late final AuthUseCase _authUseCase;

  @override
  AuthState build() {
    _authUseCase = ref.read(authUseCasePr);

    // Register to cancel operations on dispose to prevent state manipulation.
    ref.onDispose(cancelSafeOperations);

    return const AuthState();
  }

  void updateFormState(AuthFormState formState) {
    state = state.copyWith(formState: formState);
  }

  Future<void> signIn() async {
    _updateStatus(const AuthBaseInitStatus(isLoading: true));

    final authData = state.formState.toAuthData();

    await safeCall(() async => _authUseCase.signIn(authData),
        onResult: _handleSignInResult);
  }

  void _handleSignInResult(Result<void> result) {
    result.fold((error) {
      _updateStatus(AuthBaseInitStatus(errorMessage: error.message));
    }, (_) {
      _updateStatus(const AuthSuccessStatus());
    });
  }

  void _updateStatus(AuthStatus status) {
    state = state.copyWith(status: status);
  }
}
```

#### BaseStatusHandler

A utility interface class that provides a standardized way to handle common state changes.
Contains functionality to show an error dialog or a loading indicator based on the state's loading
and error status.

```dart
abstract interface class BaseStatusHandler {
  /// Handles the transition between the previous [prev] and current [next] states
  /// by processing the [BaseStatus] of the [next] state.
  ///
  /// The [prev] parameter represents the previous state.
  /// The [next] parameter represents the current state.
  /// The [handleLoadingState] parameter is a predicate that determines whether
  /// to show the loading indicator.
  /// If not provided, loading state is handled by default.
  /// The [loadingDialogBuilder] parameter is a widget builder for displaying the loading dialog.
  /// If not provided, a default loading indicator will be used.
  Future<void> handleStatus(BaseState? prev,
      BaseState next, {
        bool Function()? handleLoadingState,
        Widget Function()? loadingDialogBuilder,
      });
}
```

### Extensions

#### VMStateProviderCreator

The `VMStateProviderCreator` extension simplifies the creation of `ViewModelStateProvider` instances
for managing ViewModel logic.

`ViewModelStateProvider`  is a base class that wraps around a Riverpod state notifier provider to
offer convenience methods for handling and accessing state and its associated view model.

```dart
extension VMStateProviderCreator on WidgetRef {
  /// Creates a ViewModel Notifier State Provider instance [VMAutoDisposeStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [AutoDisposeNotifierProvider], which ensures
  /// that the associated state is automatically disposed of when no longer used.
  /// This method is suitable for view models with a shorter lifecycle that should be
  /// disposed of automatically when the widget leaves the widget tree.
  ASP vspFromADProvider(AutoDisposeNotifierProvider provider);

  /// Creates a ViewModel Notifier State Provider instance [VMAutoDisposeFamilyStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [AutoDisposeFamilyNotifierProvider], which
  /// supports dynamic initialization based on the argument [A]. Like [AutoDisposeNotifierProvider],
  /// it ensures automatic disposal of the state. This method is particularly useful when
  /// state initialization depends on an input argument that varies per instance.
  AFSP vspFromADFProvider(AutoDisposeFamilyNotifierProvider provider);

  /// Creates a ViewModel Notifier State Provider instance [VMRegularStateProvider]
  /// using the given [provider].
  ///
  /// The [provider] parameter is an instance of [NotifierProvider], which does not provide
  /// automatic disposal of the state. This method is suitable for managing global view models
  /// or state that needs to persist throughout the application's lifecycle. Ensure proper
  /// disposal management manually if required.
  RSP vspFromRProvider(NotifierProvider provider);
}

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
```

#### StateComparator

A utility extension on `BaseState` for comparing different states in state management.

Provides methods to determine if there has been a change between two states,
particularly useful in scenarios where state comparison is necessary to decide
if certain actions should be taken, like updating UI elements or fetching data.

```dart
typedef StateSelector<T extends BaseState> = Object? Function(T? state);

extension StateComparator<T extends BaseState> on T {
  /// Determines if there has been an update between the [prev] and the
  /// current state based on provided selectors.
  ///
  /// The [prev] parameter is the previous state to compare with.
  /// The [selectors] parameter is a list of selector functions that extract
  /// specific values from the state.
  /// The [notNull] parameter is a boolean flag that when set to true ensures
  /// that values extracted from the current state are not null.
  /// The [requireAll] parameter is a boolean flag that when set to true requires
  /// all selectors to indicate a change for this method to return true.
  ///     If false, this method returns true if any selector indicates a change.
  ///
  /// Returns true if the selected values indicate a state change based
  /// on the given conditions.
  bool isUpdateWithSelectors(T? prev, List<StateSelector<T>> selectors,
      {bool notNull = false, bool requireAll = true});

  /// Compares a specific value extracted from the [prev] and the
  /// current state using a [selector].
  ///
  /// The [prev] parameter is the previous state.
  /// The [selector] parameter is a selector function to extract a
  /// specific value from the state.
  /// The [notNull] parameter is a boolean flag that when set to true
  /// ensures the value extracted from the current state is not null.
  ///
  /// Returns true if the selected value has changed, false otherwise.
  bool isUpdate(T? prev, StateSelector<T> selector, {bool notNull = false});
}
```

#### **Usage Extensions:**

```dart
class AuthScreenView extends ConsumerWidget {
  const AuthScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    // Create a ViewModel State Provider instance from an AutoDisposeNotifierProvider.
    final vsp = ref.vspFromADProvider(authViewModelPr);

    // Handle state changes.
    vsp.handleState(
      listener: (prev, next) =>
          _handleStatus(prev, next, context: context, ref: ref),
    );

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: dimens.padHorPrimIns,
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: dimens.padTopPrim.insTop()),
            SliverToBoxAdapter(
              child: AuthFormContent(
                updateFormState: vsp.viewModel.updateFormState, // Access the view model's method.
              ),
            ),
            SliverPadding(padding: dimens.padBotPrim.insBottom()),
          ],
        ),
      ),
    );
  }

  void _handleStatus(AuthState? prev,
      AuthState next, {
        required BuildContext context,
        required WidgetRef ref,
      }) {
    // Handle status changes.
    ref.baseStatusHandler.handleStatus(prev, next);

    // next.isUpdate - is an extension method to compare states.
    if (next.isUpdate(prev, (s) => s?.status) &&
        next.status is AuthSuccessStatus) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Authentication successful!')),
      );
    }
  }
} 
```

### Utilities

#### SafeOperationsMixin

A mixin for safely managing asynchronous operations in Flutter applications
using Riverpod. `SafeOperationsMixin` is crucial for preventing state
manipulations in notifiers after they are disposed. It handles the execution
and cancellation of asynchronous operations, aiding in avoiding memory leaks
and ensuring efficient resource management.

This mixin is particularly valuable in notifiers like `AutoDisposeFamilyNotifier`,
`AutoDisposeNotifier`, `FamilyNotifier` and `Notifier`, where it's
important to cancel ongoing asynchronous operations upon notifier disposal.

**Usage:**

```dart
 class MyViewModel extends AutoDisposeNotifier<MyState> with SafeOperationsMixin {
  @override
  MyState build() {
    // Register to cancel operations on dispose to prevent state manipulation.
    ref.onDispose(cancelSafeOperations);
    return MyState();
  }

  Future<void> fetchData() async {
    // Execute an asynchronous operation safely.
    await safeCall(() async {
      // Asynchronous data fetching and update state logic.
    }, onResult: (result) => state = result);
  }
}
```

#### ScheduleOperationsMixin

A mixin that provides the functionality to schedule asynchronous operations
in Flutter applications using Riverpod.

This mixin is particularly valuable in notifiers like `AutoDisposeFamilyNotifier`,
`AutoDisposeNotifier`, `FamilyNotifier` and `Notifier` in scenarios where asynchronous operations
need to be triggered as part of the notifier's initialization process, but only
after the initial state has been established.

**Usage:**

```dart
 class MyViewModel extends AutoDisposeNotifier<MyState> with ScheduleOperationsMixin {
  @override
  MyState build() {
    // Schedule an asynchronous operation to be executed after state initialization.
    scheduleCall(fetchData);
    return MyState();
  }

  Future<void> fetchData() async {
    // Asynchronous data fetching and state update logic
  }
}
```

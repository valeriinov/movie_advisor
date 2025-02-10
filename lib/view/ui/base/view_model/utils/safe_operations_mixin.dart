import 'package:async/async.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// {@category StateManagement}
///
/// A mixin for safely managing asynchronous operations in Flutter applications
/// using Riverpod. [SafeOperationsMixin] is crucial for preventing state
/// manipulations in notifiers after they are disposed. It handles the execution
/// and cancellation of asynchronous operations, aiding in avoiding memory leaks
/// and ensuring efficient resource management.
///
/// This mixin is particularly valuable in notifiers like [AutoDisposeFamilyNotifier],
/// [AutoDisposeNotifier], [FamilyNotifier] and [Notifier], where it's
/// important to cancel ongoing asynchronous operations upon notifier disposal.
///
/// Example:
/// ```dart
/// class MyViewModel extends AutoDisposeNotifier<MyState> with SafeOperationsMixin {
///   @override
///   MyState build() {
///     // Register to cancel operations on dispose to prevent state manipulation.
///     ref.onDispose(cancelSafeOperations);
///     return MyState();
///   }
///
///   Future<void> fetchData() async {
///     // Execute an asynchronous operation safely.
///     await safeCall(() async {
///       // Asynchronous data fetching and update state logic.
///     }, onResult: (result) => state = result);
///   }
/// }
/// ```
///
/// `ref.onDispose(cancelSafeOperations)` in the `build` method registers the
/// cancellation of all safe operations upon provider disposal. This ensures
/// the cleanup of all asynchronous operations initiated by [safeCall].
mixin SafeOperationsMixin {
  final List<CancelableOperation> _safeOperations = [];

  /// Executes an asynchronous operation safely and handles the result.
  ///
  /// Wraps the [action] in a [CancelableOperation] and adds it to a list, allowing
  /// the operation to be canceled if necessary. If the operation completes before
  /// cancellation, the [onResult] callback is invoked with the result. This method
  /// is crucial for preventing state changes after the notifier is disposed and
  /// managing the results of asynchronous operations.
  ///
  /// To ensure proper cancellation of these operations, it's necessary to call
  /// `ref.onDispose(cancelSafeOperations);` within the `build` method of the notifier.
  ///
  /// The [action] parameter is a function returning a [Future].
  /// The optional [onResult] parameter is a callback function that handles the result of [action].
  Future<void> safeCall<T>(Future<T> Function() action,
      {Function(T result)? onResult}) async {
    final cancelableOperation = CancelableOperation.fromFuture(action());

    _safeOperations.add(cancelableOperation);

    final result = await cancelableOperation.valueOrCancellation();

    if (result != null) {
      onResult?.call(result);
    }
  }

  /// Cancels all ongoing asynchronous operations.
  ///
  /// Iterates through and cancels each [CancelableOperation], ensuring that no
  /// operations persist beyond the lifecycle of the notifier. This is key to
  /// preventing unintended state manipulations after disposal.
  void cancelSafeOperations() {
    for (final operation in _safeOperations) {
      operation.cancel();
    }
    _safeOperations.clear();
  }
}

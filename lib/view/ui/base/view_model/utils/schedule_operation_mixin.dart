import 'package:flutter_riverpod/flutter_riverpod.dart';

/// {@category StateManagement}
///
/// A mixin that provides the functionality to schedule asynchronous operations
/// in Flutter applications using Riverpod.
///
/// This mixin is particularly valuable in notifiers like [AutoDisposeFamilyNotifier],
/// [AutoDisposeNotifier], [FamilyNotifier] and [Notifier] in scenarios where asynchronous operations
/// need to be triggered as part of the notifier's initialization process, but only
/// after the initial state has been established.
///
/// Example:
/// ```dart
/// class MyViewModel extends AutoDisposeNotifier<MyState> with ScheduleOperationsMixin {
///   @override
///   MyState build() {
///     // Schedule an asynchronous operation to be executed after state initialization.
///     scheduleCall(fetchData);
///     return MyState();
///   }
///
///   Future<void> fetchData() async {
///     // Asynchronous data fetching and state update logic
///   }
/// }
/// ```
///
/// In the `build` method, [scheduleCall] is used to queue an asynchronous operation
/// (`fetchData` in this case) to be executed as a [Future.microtask]. This ensures that the operation
/// is carried out immediately after the notifier's state is initialized, allowing for
/// timely state updates and interactions.
mixin ScheduleOperationsMixin {
  /// Schedules an asynchronous operation to be executed as a [Future.microtask].
  ///
  /// This method is intended for use within the `build` method of a notifier.
  /// It queues the given [action] to be executed as a [Future.microtask],
  /// guaranteeing that the action is performed after the notifier's state
  /// initialization is complete.
  ///
  /// The [action] parameter is a function returning a [Future].
  void scheduleCall<T>(Future<T> Function() action) {
    Future.microtask(action);
  }
}

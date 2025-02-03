import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'watched_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchedStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchedState extends BaseState<WatchedStatus> with WatchedStateMappable {
  @override
  final WatchedStatus status;

  const WatchedState({
    this.status = const WatchedBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [WatchedState].
/// Provides properties for loading, initialization, and error handling.
sealed class WatchedStatus extends BaseStatus {
const WatchedStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [WatchedState].
/// Used before it has completed its setup.
@mappableEntity
final class WatchedBaseStatus extends WatchedStatus
with WatchedBaseStatusMappable {
const WatchedBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [WatchedState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class WatchedBaseInitStatus extends WatchedStatus
with WatchedBaseInitStatusMappable {
const WatchedBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}

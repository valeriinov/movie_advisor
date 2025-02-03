import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'watch_list_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchListStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchListState extends BaseState<WatchListStatus> with WatchListStateMappable {
  @override
  final WatchListStatus status;

  const WatchListState({
    this.status = const WatchListBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [WatchListState].
/// Provides properties for loading, initialization, and error handling.
sealed class WatchListStatus extends BaseStatus {
const WatchListStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [WatchListState].
/// Used before it has completed its setup.
@mappableEntity
final class WatchListBaseStatus extends WatchListStatus
with WatchListBaseStatusMappable {
const WatchListBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [WatchListState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class WatchListBaseInitStatus extends WatchListStatus
with WatchListBaseInitStatusMappable {
const WatchListBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}

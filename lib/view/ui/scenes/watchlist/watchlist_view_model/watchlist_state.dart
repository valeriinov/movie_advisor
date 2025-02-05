import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'watchlist_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchlistStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchlistState extends BaseState<WatchlistStatus> with WatchlistStateMappable {
  @override
  final WatchlistStatus status;

  const WatchlistState({
    this.status = const WatchlistBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [WatchlistState].
/// Provides properties for loading, initialization, and error handling.
sealed class WatchlistStatus extends BaseStatus {
const WatchlistStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [WatchlistState].
/// Used before it has completed its setup.
@mappableEntity
final class WatchlistBaseStatus extends WatchlistStatus
with WatchlistBaseStatusMappable {
const WatchlistBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [WatchlistState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class WatchlistBaseInitStatus extends WatchlistStatus
with WatchlistBaseInitStatusMappable {
const WatchlistBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}

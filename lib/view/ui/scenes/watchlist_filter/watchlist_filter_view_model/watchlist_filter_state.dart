import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'watchlist_filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchlistFilterStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchlistFilterState<F> extends BaseState<WatchlistFilterStatus>
    with WatchlistFilterStateMappable<F> {
  final F initFilter;
  final F filter;

  bool get isFilterChanged => filter != initFilter;
  @override
  final WatchlistFilterStatus status;

  const WatchlistFilterState({
    required this.initFilter,
    F? filter,
    this.status = const WatchlistFilterBaseStatus(),
  }) : filter = filter ?? initFilter;
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [WatchlistFilterState].
/// Provides properties for loading, initialization, and error handling.
sealed class WatchlistFilterStatus extends BaseStatus {
  const WatchlistFilterStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [WatchlistFilterState].
/// Used before it has completed its setup.
@mappableEntity
final class WatchlistFilterBaseStatus extends WatchlistFilterStatus
    with WatchlistFilterBaseStatusMappable {
  const WatchlistFilterBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [WatchlistFilterState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class WatchlistFilterBaseInitStatus extends WatchlistFilterStatus
    with WatchlistFilterBaseInitStatusMappable {
  const WatchlistFilterBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class ApplyWatchlistFilterStatus extends WatchlistFilterStatus
    with ApplyWatchlistFilterStatusMappable {
  const ApplyWatchlistFilterStatus({super.isInitialized = false});
}

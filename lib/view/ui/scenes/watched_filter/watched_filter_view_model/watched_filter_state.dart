import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'watched_filter_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchedFilterStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchedFilterState<F> extends BaseState<WatchedFilterStatus>
    with WatchedFilterStateMappable<F> {
  final F initFilter;
  final F filter;

  bool get isFilterChanged => filter != initFilter;

  @override
  final WatchedFilterStatus status;

  const WatchedFilterState({
    required this.initFilter,
    F? filter,
    this.status = const WatchedFilterBaseStatus(),
  }) : filter = filter ?? initFilter;
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [WatchedFilterState].
/// Provides properties for loading, initialization, and error handling.
sealed class WatchedFilterStatus extends BaseStatus {
  const WatchedFilterStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [WatchedFilterState].
/// Used before it has completed its setup.
@mappableEntity
final class WatchedFilterBaseStatus extends WatchedFilterStatus
    with WatchedFilterBaseStatusMappable {
  const WatchedFilterBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [WatchedFilterState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class WatchedFilterBaseInitStatus extends WatchedFilterStatus
    with WatchedFilterBaseInitStatusMappable {
  const WatchedFilterBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class ApplyWatchedFilterStatus extends WatchedFilterStatus
    with ApplyWatchedFilterStatusMappable {
  const ApplyWatchedFilterStatus({super.isInitialized = false});
}

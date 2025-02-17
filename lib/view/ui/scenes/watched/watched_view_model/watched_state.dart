import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../base/media_load_info.dart';
import '../../../base/view_model/base_state.dart';

part 'watched_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [WatchedStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class WatchedState<T> extends BaseState<WatchedStatus>
    with WatchedStateMappable<T> {
  final MediaLoadInfo<T> watched;

  @override
  final WatchedStatus status;

  WatchedState({
    MediaLoadInfo<T>? watched,
    this.status = const WatchedBaseStatus(),
  }) : watched = watched ?? MediaLoadInfo<T>();

  WatchedState<T> copyWithUpdWatched({
    WatchedStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    ListWithPaginationData<T>? data,
  }) {
    final updatedData = watched.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      watched: updatedData,
    );
  }
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

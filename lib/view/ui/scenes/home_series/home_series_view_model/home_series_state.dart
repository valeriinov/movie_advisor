import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/view_model/base_state.dart';
import '../../home/model/media_load_info.dart';
import '../../home/model/media_tab.dart';

part 'home_series_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeSeriesStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeSeriesState extends BaseState<HomeSeriesStatus>
    with HomeSeriesStateMappable {
  final MediaTab currentTab;

  final SeriesLoadInfo suggestedSeries;
  final SeriesLoadInfo tabSeries;

  @override
  final HomeSeriesStatus status;

  HomeSeriesState({
    this.currentTab = MediaTab.nowPlaying,
    SeriesLoadInfo? suggestedSeries,
    SeriesLoadInfo? tabSeries,
    this.status = const HomeSeriesBaseStatus(),
  })  : suggestedSeries = suggestedSeries ?? SeriesLoadInfo(),
        tabSeries = tabSeries ?? SeriesLoadInfo();

  HomeSeriesState copyWithUpdSugSer({
    HomeSeriesStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    PaginatedSeries? data,
  }) {
    final updatedData = suggestedSeries.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      suggestedSeries: updatedData,
    );
  }

  HomeSeriesState copyWithUpdTabSer({
    HomeSeriesStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    PaginatedSeries? data,
  }) {
    final updatedData = tabSeries.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      tabSeries: updatedData,
    );
  }
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeSeriesState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeSeriesStatus extends BaseStatus {
  const HomeSeriesStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeSeriesState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeSeriesBaseStatus extends HomeSeriesStatus
    with HomeSeriesBaseStatusMappable {
  const HomeSeriesBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeSeriesState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeSeriesBaseInitStatus extends HomeSeriesStatus
    with HomeSeriesBaseInitStatusMappable {
  const HomeSeriesBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

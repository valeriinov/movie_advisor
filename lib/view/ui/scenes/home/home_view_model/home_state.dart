import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/view_model/base_state.dart';
import '../model/movie_load_info.dart';
import '../model/movie_tab.dart';
import '../model/series_load_info.dart';
import '../model/series_tab.dart';

part 'home_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeState extends BaseState<HomeStatus> with HomeStateMappable {
  final MovieTab movieTab;
  final SeriesTab seriesTab;

  final MovieLoadInfo suggestedMovies;
  final MovieLoadInfo tabMovies;

  final SeriesLoadInfo suggestedSeries;
  final SeriesLoadInfo tabSeries;

  @override
  final HomeStatus status;

  bool get isMovieMode => movieTab != MovieTab.none;

  const HomeState({
    this.movieTab = MovieTab.nowPlaying,
    this.seriesTab = SeriesTab.none,
    this.suggestedMovies = const MovieLoadInfo(),
    this.tabMovies = const MovieLoadInfo(),
    this.suggestedSeries = const SeriesLoadInfo(),
    this.tabSeries = const SeriesLoadInfo(),
    this.status = const HomeBaseStatus(),
  });

  HomeState copyWithUpdSugMov({
    HomeStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<MovieShortData>? data,
  }) {
    final updatedData = suggestedMovies.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      suggestedMovies: updatedData,
    );
  }

  HomeState copyWithUpdTabMov({
    HomeStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<MovieShortData>? data,
  }) {
    final updatedData = tabMovies.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      tabMovies: updatedData,
    );
  }

  HomeState copyWithUpdSugSer({
    HomeStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<SeriesShortData>? data,
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

  HomeState copyWithUpdTabSer({
    HomeStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    ListWithPaginationData<SeriesShortData>? data,
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

  HomeState copyWithToggleContentMode({
    HomeStatus? status,
  }) {
    return copyWith(
      status: status ?? this.status,
      movieTab: isMovieMode ? MovieTab.nowPlaying : MovieTab.none,
      seriesTab: isMovieMode ? SeriesTab.airingToday : SeriesTab.none,
      suggestedMovies: const MovieLoadInfo(),
      tabMovies: const MovieLoadInfo(),
      suggestedSeries: const SeriesLoadInfo(),
      tabSeries: const SeriesLoadInfo(),
    );
  }
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeStatus extends BaseStatus {
  const HomeStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeBaseStatus extends HomeStatus with HomeBaseStatusMappable {
  const HomeBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeBaseInitStatus extends HomeStatus
    with HomeBaseInitStatusMappable {
  const HomeBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

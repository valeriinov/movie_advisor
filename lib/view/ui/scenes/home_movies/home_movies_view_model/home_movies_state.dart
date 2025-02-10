import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../base/view_model/base_state.dart';
import '../../../widgets/home_shared/model/media_load_info.dart';
import '../../../widgets/home_shared/model/media_tab.dart';

part 'home_movies_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeMoviesStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeMoviesState extends BaseState<HomeMoviesStatus>
    with HomeMoviesStateMappable {
  final MediaTab currentTab;

  final MovieLoadInfo suggestedMovies;
  final MovieLoadInfo tabMovies;

  @override
  final HomeMoviesStatus status;

  HomeMoviesState({
    this.currentTab = MediaTab.nowPlaying,
    MovieLoadInfo? suggestedMovies,
    MovieLoadInfo? tabMovies,
    this.status = const HomeMoviesBaseStatus(),
  })  : suggestedMovies = suggestedMovies ?? MovieLoadInfo(),
        tabMovies = tabMovies ?? MovieLoadInfo();

  HomeMoviesState copyWithUpdSugMov({
    HomeMoviesStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    PaginatedMovies? data,
  }) {
    final updatedData = suggestedMovies.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      suggestedMovies: updatedData,
    );
  }

  HomeMoviesState copyWithUpdTabMov({
    HomeMoviesStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    PaginatedMovies? data,
  }) {
    final updatedData = tabMovies.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      tabMovies: updatedData,
    );
  }
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeMoviesState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeMoviesStatus extends BaseStatus {
  const HomeMoviesStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeMoviesState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeMoviesBaseStatus extends HomeMoviesStatus
    with HomeMoviesBaseStatusMappable {
  const HomeMoviesBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeMoviesState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeMoviesBaseInitStatus extends HomeMoviesStatus
    with HomeMoviesBaseInitStatusMappable {
  const HomeMoviesBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

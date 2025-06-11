part of 'watched_filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchedFilterState] with [MoviesWatchedFilterData].
typedef WatchedFilterMoviesState = WatchedFilterState<MoviesWatchedFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchedFilterMoviesViewModel] and [WatchedFilterState].
typedef WatchedFilterMoviesVSP =
ASP<WatchedFilterViewModel, WatchedFilterState>;

/// {@category StateManagement}
///
/// A provider for the [WatchedFilterMoviesViewModel] class.
final watchedFilterMoviesViewModelPr =
AutoDisposeNotifierProvider<
    WatchedFilterMoviesViewModel,
    WatchedFilterMoviesState
>(WatchedFilterMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `filter-settings-movies`-specific logic and state.
///
/// This class is responsible for coordinating `filter-settings-movies` behavior and interacting with the UI.
final class WatchedFilterMoviesViewModel
    extends WatchedFilterViewModel<MoviesWatchedFilterData, MovieGenre> {
  @override
  WatchedFilterMoviesState build() {
    return WatchedFilterMoviesState(initFilter: MoviesWatchedFilterData());
  }

  @override
  void init({required MoviesWatchedFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
  }

  @override
  void resetFilter() {
    state = state.copyWith(
      filter: MoviesWatchedFilterData().copyWith(
        sortBy: state.initFilter.sortBy,
      ),
    );
  }

  @override
  void updateWithGenres(MovieGenre genre) {
    final withGenres = state.filter.withGenres.handleSelectionGenre(genre);

    final filter = state.filter.copyWith(withGenres: withGenres);

    state = state.copyWith(filter: filter);
  }

  @override
  void updateWithoutGenres(MovieGenre genre) {
    final withoutGenres = state.filter.withoutGenres.handleSelectionGenre(
      genre,
    );

    final filter = state.filter.copyWith(withoutGenres: withoutGenres);

    state = state.copyWith(filter: filter);
  }
}

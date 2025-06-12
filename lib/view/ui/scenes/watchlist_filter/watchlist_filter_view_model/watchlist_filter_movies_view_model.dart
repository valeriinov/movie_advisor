part of 'watchlist_filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchlistFilterState] with [MoviesWatchlistFilterData].
typedef WatchlistFilterMoviesState =
    WatchlistFilterState<MoviesWatchlistFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistFilterMoviesViewModel] and [WatchlistFilterMoviesState].
typedef WatchedFilterMoviesVSP =
    ASP<WatchlistFilterMoviesViewModel, WatchlistFilterMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistFilterMoviesViewModel] class.
final watchedFilterMoviesViewModelPr =
    AutoDisposeNotifierProvider<
      WatchlistFilterMoviesViewModel,
      WatchlistFilterMoviesState
    >(WatchlistFilterMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watchlist filter movies`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist filter movies` behavior and interacting with the UI.
final class WatchlistFilterMoviesViewModel
    extends WatchlistFilterViewModel<MoviesWatchlistFilterData, MovieGenre> {
  @override
  WatchlistFilterMoviesState build() {
    return WatchlistFilterMoviesState(initFilter: MoviesWatchlistFilterData());
  }

  @override
  void init({required MoviesWatchlistFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
  }

  @override
  void resetFilter() {
    state = state.copyWith(
      filter: MoviesWatchlistFilterData().copyWith(
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

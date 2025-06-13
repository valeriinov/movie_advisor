part of 'watchlist_filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchlistFilterState] with [SeriesWatchlistFilterData].
typedef WatchlistFilterSeriesState =
    WatchlistFilterState<SeriesWatchlistFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistFilterSeriesViewModel] and [WatchlistFilterSeriesState].
typedef WatchlistFilterSeriesVSP =
    ASP<WatchlistFilterSeriesViewModel, WatchlistFilterSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistFilterSeriesViewModel] class.
final watchlistFilterSeriesViewModelPr =
    AutoDisposeNotifierProvider<
      WatchlistFilterSeriesViewModel,
      WatchlistFilterSeriesState
    >(WatchlistFilterSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watchlist filter series`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist filter series` behavior and interacting with the UI.
final class WatchlistFilterSeriesViewModel
    extends WatchlistFilterViewModel<SeriesWatchlistFilterData, SeriesGenre> {
  @override
  WatchlistFilterSeriesState build() {
    return WatchlistFilterSeriesState(initFilter: SeriesWatchlistFilterData());
  }

  @override
  void init({required SeriesWatchlistFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
  }

  @override
  void resetFilter() {
    state = state.copyWith(
      filter: SeriesWatchlistFilterData().copyWith(
        sortBy: state.initFilter.sortBy,
      ),
    );
  }

  @override
  void updateWithGenres(SeriesGenre genre) {
    final selected = state.filter.withGenres.handleSelectionGenre(genre);
    final filter = state.filter.copyWith(withGenres: selected);
    state = state.copyWith(filter: filter);
  }

  @override
  void updateWithoutGenres(SeriesGenre genre) {
    final selected = state.filter.withoutGenres.handleSelectionGenre(genre);
    final filter = state.filter.copyWith(withoutGenres: selected);
    state = state.copyWith(filter: filter);
  }
}

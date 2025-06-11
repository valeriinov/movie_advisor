part of 'watched_filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchedFilterState] with [SeriesWatchedFilterData].
typedef WatchedFilterSeriesState = WatchedFilterState<SeriesWatchedFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchedFilterSeriesViewModel] and [WatchedFilterSeriesState].
typedef WatchedFilterSeriesVSP =
    ASP<WatchedFilterSeriesViewModel, WatchedFilterSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchedFilterSeriesViewModel] class.
final watchedFilterSeriesViewModelPr =
    AutoDisposeNotifierProvider<
      WatchedFilterSeriesViewModel,
      WatchedFilterSeriesState
    >(WatchedFilterSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `filter-settings-series`-specific logic and state.
///
/// This class is responsible for coordinating `filter-settings-series` behavior and interacting with the UI.
final class WatchedFilterSeriesViewModel
    extends WatchedFilterViewModel<SeriesWatchedFilterData, SeriesGenre> {
  @override
  WatchedFilterSeriesState build() {
    return WatchedFilterSeriesState(initFilter: SeriesWatchedFilterData());
  }

  @override
  void init({required SeriesWatchedFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
  }

  @override
  void resetFilter() {
    state = state.copyWith(
      filter: SeriesWatchedFilterData().copyWith(
        sortBy: state.initFilter.sortBy,
      ),
    );
  }

  @override
  void updateWithGenres(SeriesGenre genre) {
    final withGenres = state.filter.withGenres.handleSelectionGenre(genre);

    final filter = state.filter.copyWith(withGenres: withGenres);

    state = state.copyWith(filter: filter);
  }

  @override
  void updateWithoutGenres(SeriesGenre genre) {
    final withoutGenres = state.filter.withoutGenres.handleSelectionGenre(
      genre,
    );

    final filter = state.filter.copyWith(withoutGenres: withoutGenres);

    state = state.copyWith(filter: filter);
  }
}

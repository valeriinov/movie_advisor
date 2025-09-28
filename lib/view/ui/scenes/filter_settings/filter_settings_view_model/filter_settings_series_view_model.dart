part of 'filter_settings_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [FilterSettingsState] with [SeriesFilterData].
typedef FilterSettingsSeriesState = FilterSettingsState<SeriesFilterData>;

/// {@category StateManagement}
///
/// A type alias for [VSP] with [FilterSettingsSeriesViewModel] and [FilterSettingsState].
typedef FilterSettingsSeriesVSP =
    VSP<FilterSettingsSeriesViewModel, FilterSettingsState>;

/// {@category StateManagement}
///
/// A provider for the [FilterSettingsSeriesViewModel] class.
final filterSettingsSeriesViewModelPr =
    NotifierProvider.autoDispose<
      FilterSettingsSeriesViewModel,
      FilterSettingsSeriesState
    >(FilterSettingsSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `filter-settings-series`-specific logic and state.
///
/// This class is responsible for coordinating `filter-settings-series` behavior and interacting with the UI.
final class FilterSettingsSeriesViewModel
    extends FilterSettingsViewModel<SeriesFilterData, SeriesGenre> {
  @override
  FilterSettingsSeriesState build() {
    return FilterSettingsSeriesState(initFilter: SeriesFilterData());
  }

  @override
  void init({required SeriesFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
  }

  @override
  void resetFilter() {
    state = state.copyWith(
      filter: SeriesFilterData().copyWith(sortBy: state.initFilter.sortBy),
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

part of 'filter_settings_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [FilterSettingsState] with [MoviesFilterData].
typedef FilterSettingsMoviesState = FilterSettingsState<MoviesFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterSettingsMoviesViewModel] and [FilterSettingsState].
typedef FilterSettingsMoviesVSP =
    ASP<FilterSettingsMoviesViewModel, FilterSettingsState>;

/// {@category StateManagement}
///
/// A provider for the [FilterSettingsMoviesViewModel] class.
final filterSettingsMoviesViewModelPr =
    AutoDisposeNotifierProvider<
      FilterSettingsMoviesViewModel,
      FilterSettingsMoviesState
    >(FilterSettingsMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `filter-settings-movies`-specific logic and state.
///
/// This class is responsible for coordinating `filter-settings-movies` behavior and interacting with the UI.
final class FilterSettingsMoviesViewModel
    extends FilterSettingsViewModel<MoviesFilterData, MovieGenre> {
  @override
  FilterSettingsMoviesState build() {
    return FilterSettingsMoviesState(initFilter: MoviesFilterData());
  }

  @override
  void init({required MoviesFilterData initFilter}) {
    state = state.copyWith(initFilter: initFilter, filter: initFilter);
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

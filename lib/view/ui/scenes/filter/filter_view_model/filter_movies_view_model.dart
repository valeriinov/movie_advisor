part of 'filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [FilterState] with [MovieShortData] and [MoviesFilterData].
typedef FilterMoviesState = FilterState<MovieShortData, MoviesFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterMoviesViewModel] and [FilterMoviesState].
typedef SearchMoviesVSP = ASP<FilterMoviesViewModel, FilterMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [FilterMoviesViewModel] class.
final filterMoviesViewModelPr =
    AutoDisposeNotifierProvider<FilterMoviesViewModel, FilterMoviesState>(
      FilterMoviesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `filter-movies`-specific logic and state.
///
/// This class is responsible for coordinating `filter-movies` behavior and interacting with the UI.
final class FilterMoviesViewModel
    extends FilterViewModel<MovieShortData, MoviesFilterData, MovieGenre> {
  @override
  FilterMoviesState build() {
    _filterUseCase = ref.read(filterMoviesUseCasePr);
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    return FilterMoviesState(filter: MoviesFilterData());
  }

  @override
  void updateWithGenres(List<MovieGenre> withGenres) {
    final filter = state.filter.copyWith(withGenres: withGenres);

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  @override
  void updateWithoutGenres(List<MovieGenre> withoutGenres) {
    final filter = state.filter.copyWith(withoutGenres: withoutGenres);

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }
}

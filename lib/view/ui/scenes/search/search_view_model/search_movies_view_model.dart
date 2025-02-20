part of 'search_view_model.dart';

typedef SearchMoviesState = SearchState<MovieShortData>;

typedef SearchMoviesVSP = ASP<SearchMoviesViewModel, SearchMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [SearchMoviesViewModel] class.
final searchMoviesViewModelPr =
    AutoDisposeNotifierProvider<SearchMoviesViewModel, SearchMoviesState>(
  SearchMoviesViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `search-movies`-specific logic and state.
///
/// This class is responsible for coordinating `search-movies` behavior and interacting with the UI.
final class SearchMoviesViewModel extends SearchViewModel<MovieShortData> {
  @override
  SearchMoviesState build() {
    _searchUseCase = ref.read(searchMoviesUseCasePr);
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    _watchChangesSubscription =
        _watchUseCase.watchChanges().listen(_handleWatchChanges);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    return SearchMoviesState();
  }
}

part of 'search_view_model.dart';

typedef SearchSeriesState = SearchState<SeriesShortData>;

typedef SearchSeriesVSP = ASP<SearchSeriesViewModel, SearchSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [SearchSeriesViewModel] class.
final searchSeriesViewModelPr =
    AutoDisposeNotifierProvider<SearchSeriesViewModel, SearchSeriesState>(
  SearchSeriesViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `search-series`-specific logic and state.
///
/// This class is responsible for coordinating `search-series` behavior and interacting with the UI.
final class SearchSeriesViewModel extends SearchViewModel<SeriesShortData> {
  @override
  SearchSeriesState build() {
    _searchUseCase = ref.read(searchSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    _watchChangesSubscription =
        _watchUseCase.watchChanges().listen(_handleWatchChanges);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    return SearchSeriesState();
  }
}

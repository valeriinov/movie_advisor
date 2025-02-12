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
final class SearchSeriesViewModel extends _SearchViewModel<SeriesShortData> {
  @override
  SearchSeriesState build() {
    _searchUseCase = ref.read(searchSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);

    return SearchSeriesState();
  }
}

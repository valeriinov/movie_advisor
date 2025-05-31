part of 'filter_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [FilterState] with [SeriesShortData] and [SeriesFilterData].
typedef FilterSeriesState = FilterState<SeriesShortData, SeriesFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterSeriesViewModel] and [FilterSeriesState].
typedef SearchSeriesVSP = ASP<FilterSeriesViewModel, FilterSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [FilterSeriesViewModel] class.
final filterSeriesViewModelPr =
    AutoDisposeNotifierProvider<FilterSeriesViewModel, FilterSeriesState>(
      FilterSeriesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `filter-series`-specific logic and state.
///
/// This class is responsible for coordinating `filter-series` behavior and interacting with the UI.
final class FilterSeriesViewModel
    extends FilterViewModel<SeriesShortData, SeriesFilterData, SeriesGenre> {
  @override
  FilterSeriesState build() {
    _filterUseCase = ref.read(filterSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return FilterSeriesState(filter: SeriesFilterData());
  }
}

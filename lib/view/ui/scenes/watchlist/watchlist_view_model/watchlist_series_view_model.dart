part of 'watchlist_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchlistState] with [SeriesShortData] and [SeriesWatchlistFilterData].
typedef WatchlistSeriesState =
    WatchlistState<SeriesShortData, SeriesWatchlistFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistSeriesViewModel] and [WatchlistSeriesState].
typedef WatchlistSeriesVSP =
    ASP<WatchlistSeriesViewModel, WatchlistSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistSeriesViewModel] class.
final watchlistSeriesViewModelPr =
    AutoDisposeNotifierProvider<WatchlistSeriesViewModel, WatchlistSeriesState>(
      WatchlistSeriesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `watchlist_series`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist_series` behavior and interacting with the UI.
final class WatchlistSeriesViewModel
    extends WatchlistViewModel<SeriesShortData, SeriesWatchlistFilterData> {
  @override
  WatchlistSeriesState build() {
    _watchUseCase = ref.read(watchSeriesUseCasePr);
    _watchlistFilterUseCase = ref.read(watchlistSeriesFilterUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchlistSeriesState(
      status: WatchlistBaseStatus(isLoading: true),
      filter: SeriesWatchlistFilterData(),
    );
  }

  @override
  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(WatchlistBaseStatus(isLoading: showLoader));

    await _syncUseCase.syncSeries();

    return super.loadInitialData(showLoader: showLoader);
  }
}

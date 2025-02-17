part of 'watchlist_view_model.dart';

typedef WatchlistSeriesState = WatchlistState<SeriesShortData>;

typedef WatchlistSeriesVSP
    = ASP<WatchlistMoviesViewModel, WatchlistMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistSeriesViewModel] class.
final watchlistSeriesViewModelPr =
    AutoDisposeNotifierProvider<WatchlistSeriesViewModel, WatchlistSeriesState>(
        WatchlistSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watchlist_series`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist_series` behavior and interacting with the UI.
final class WatchlistSeriesViewModel
    extends _WatchlistViewModel<SeriesShortData> {
  @override
  WatchlistSeriesState build() {
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    _watchChangesSubscription =
        _watchUseCase.watchChanges().listen(_handleWatchChanges);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchlistSeriesState();
  }
}

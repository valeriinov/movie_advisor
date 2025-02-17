part of 'watchlist_view_model.dart';

typedef WatchlistMoviesState = WatchlistState<MovieShortData>;

typedef WatchlistMoviesVSP
    = ASP<WatchlistMoviesViewModel, WatchlistMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistMoviesViewModel] class.
final watchlistMoviesViewModelPr =
    AutoDisposeNotifierProvider<WatchlistMoviesViewModel, WatchlistMoviesState>(
        WatchlistMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watchlist_movies`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist_movies` behavior and interacting with the UI.
final class WatchlistMoviesViewModel
    extends _WatchlistViewModel<MovieShortData> {
  @override
  WatchlistMoviesState build() {
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    _watchChangesSubscription =
        _watchUseCase.watchChanges().listen(_handleWatchChanges);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchlistMoviesState();
  }
}

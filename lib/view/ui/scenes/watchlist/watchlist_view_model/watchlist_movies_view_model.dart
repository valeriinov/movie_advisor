part of 'watchlist_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchlistState] with [MovieShortData] and [MoviesWatchlistFilterData].
typedef WatchlistMoviesState =
    WatchlistState<MovieShortData, MoviesWatchlistFilterData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistMoviesViewModel] and [WatchlistMoviesState].
typedef WatchlistMoviesVSP =
    ASP<WatchlistMoviesViewModel, WatchlistMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchlistMoviesViewModel] class.
final watchlistMoviesViewModelPr =
    AutoDisposeNotifierProvider<WatchlistMoviesViewModel, WatchlistMoviesState>(
      WatchlistMoviesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `watchlist_movies`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist_movies` behavior and interacting with the UI.
final class WatchlistMoviesViewModel
    extends WatchlistViewModel<MovieShortData, MoviesWatchlistFilterData> {
  @override
  WatchlistMoviesState build() {
    _watchUseCase = ref.read(watchMoviesUseCasePr);
    _watchlistFilterUseCase = ref.read(watchlistMovieFilterUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchlistMoviesState(
      status: WatchlistBaseStatus(isLoading: true),
      filter: MoviesWatchlistFilterData(),
    );
  }

  @override
  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(WatchlistBaseStatus(isLoading: showLoader));

    await _syncUseCase.syncMovies();

    return super.loadInitialData(showLoader: showLoader);
  }
}

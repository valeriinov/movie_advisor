part of 'watched_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [WatchedState] with [MovieShortData].
typedef WatchedMoviesState = WatchedState<MovieShortData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchedMoviesViewModel] and [WatchedMoviesState].
typedef WatchedMoviesVSP = ASP<WatchedMoviesViewModel, WatchedMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchedMoviesViewModel] class.
final watchedMoviesViewModelPr =
    AutoDisposeNotifierProvider<WatchedMoviesViewModel, WatchedMoviesState>(
      WatchedMoviesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `watched_movies`-specific logic and state.
///
/// This class is responsible for coordinating `watched_movies` behavior and interacting with the UI.
final class WatchedMoviesViewModel extends WatchedViewModel<MovieShortData> {
  @override
  WatchedMoviesState build() {
    _watchUseCase = ref.read(watchMoviesUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchedMoviesState();
  }

  @override
  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(WatchedBaseStatus(isLoading: showLoader));

    await _syncUseCase.syncMovies();

    return super.loadInitialData(showLoader: showLoader);
  }
}

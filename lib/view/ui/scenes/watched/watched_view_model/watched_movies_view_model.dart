part of 'watched_view_model.dart';

typedef WatchedMoviesState = WatchedState<MovieShortData>;

typedef WatchedMoviesVSP = ASP<WatchedMoviesViewModel, WatchedMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [WatchedMoviesViewModel] class.
final watchedMoviesViewModelPr =
    AutoDisposeNotifierProvider<WatchedMoviesViewModel, WatchedMoviesState>(
        WatchedMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `watched_movies`-specific logic and state.
///
/// This class is responsible for coordinating `watched_movies` behavior and interacting with the UI.
final class WatchedMoviesViewModel extends _WatchedViewModel<MovieShortData> {
  @override
  WatchedMoviesState build() {
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    _watchChangesSubscription =
        _watchUseCase.watchChanges().listen(_handleWatchChanges);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return WatchedMoviesState();
  }
}

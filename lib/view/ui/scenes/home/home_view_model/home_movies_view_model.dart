part of 'home_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [HomeState] with [MovieShortData].
typedef HomeMoviesState = HomeState<MovieShortData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [HomeMoviesViewModel] and [HomeMoviesState].
typedef HomeMoviesVSP = ASP<HomeMoviesViewModel, HomeMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [HomeMoviesViewModel] class.
final homeMoviesViewModelPr =
    AutoDisposeNotifierProvider<HomeMoviesViewModel, HomeMoviesState>(
      HomeMoviesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `home_movies`-specific logic and state.
///
/// This class is responsible for coordinating `home_movies` behavior and interacting with the UI.
final class HomeMoviesViewModel extends HomeViewModel<MovieShortData> {
  @override
  HomeMoviesState build() {
    _homeUseCase = ref.read(homeMoviesUseCasePr);
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

    return HomeMoviesState();
  }

  @override
  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

    await _syncUseCase.syncMovies();

    return super.loadInitialData(showLoader: showLoader);
  }
}

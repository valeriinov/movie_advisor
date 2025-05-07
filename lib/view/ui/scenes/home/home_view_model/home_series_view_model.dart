part of 'home_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [HomeState] with [SeriesShortData].
typedef HomeSeriesState = HomeState<SeriesShortData>;

/// {@category StateManagement}
///
/// A type alias for [ASP] with [HomeSeriesViewModel] and [HomeSeriesState].
typedef HomeSeriesVSP = ASP<HomeSeriesViewModel, HomeSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [HomeSeriesViewModel] class.
///
/// This class is responsible for coordinating `home_series` behavior and interacting with the UI.
final homeSeriesViewModelPr =
    AutoDisposeNotifierProvider<HomeSeriesViewModel, HomeSeriesState>(
      HomeSeriesViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `home_series`-specific logic and state.
///
/// This class is responsible for coordinating `home_series` behavior and interacting with the UI.
final class HomeSeriesViewModel extends HomeViewModel<SeriesShortData> {
  @override
  HomeSeriesState build() {
    _homeUseCase = ref.read(homeSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);
    _syncUseCase = ref.read(syncUseCasePr);
    _refreshUseCase = ref.read(refreshUseCasePr);
    _settingsUseCase = ref.read(settingsUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    _refreshSubscription = _refreshUseCase
        .shouldRefreshContent(isMovies: true)
        .listen(_handleRefresh);

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
      _refreshSubscription.cancel();
    });

    scheduleCall(() async {
      await loadInitialData();
      await _handleFirstLaunch();
    });

    return HomeSeriesState(status: HomeBaseStatus(isLoading: true));
  }

  @override
  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

    await _syncUseCase.syncSeries();

    return super.loadInitialData(showLoader: showLoader);
  }
}

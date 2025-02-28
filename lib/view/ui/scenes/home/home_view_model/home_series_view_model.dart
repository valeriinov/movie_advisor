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

    _watchChangesSubscription = _watchUseCase.watchChanges().listen(
      _handleWatchChanges,
    );

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return HomeSeriesState();
  }
}

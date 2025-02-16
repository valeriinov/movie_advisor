part of 'home_view_model.dart';

typedef HomeSeriesState = HomeState<SeriesShortData>;

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
final class HomeSeriesViewModel extends _HomeViewModel<SeriesShortData> {
  @override
  HomeSeriesState build() {
    _homeUseCase = ref.read(homeSeriesUseCasePr);
    _watchUseCase = ref.read(watchSeriesUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen((event) {
      print('[CHANGED] $event'); // TODO: Implement changes handling
    });

    ref.onDispose(() {
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return HomeSeriesState();
  }
}

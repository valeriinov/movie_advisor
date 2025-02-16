part of 'home_view_model.dart';

typedef HomeMoviesState = HomeState<MovieShortData>;

typedef HomeMoviesVSP = ASP<HomeMoviesViewModel, HomeMoviesState>;

/// {@category StateManagement}
///
/// A provider for the [HomeMoviesViewModel] class.
final homeMoviesViewModelPr =
    AutoDisposeNotifierProvider<HomeMoviesViewModel, HomeMoviesState>(
        HomeMoviesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `home_movies`-specific logic and state.
///
/// This class is responsible for coordinating `home_movies` behavior and interacting with the UI.
final class HomeMoviesViewModel extends _HomeViewModel<MovieShortData> {
  @override
  HomeMoviesState build() {
    _homeUseCase = ref.read(homeMoviesUseCasePr);
    _watchUseCase = ref.read(watchMoviesUseCasePr);

    _watchChangesSubscription = _watchUseCase.watchChanges().listen((event) {
      print('[CHANGED] $event'); // TODO: Implement changes handling
      });

    ref.onDispose((){
      cancelSafeOperations();
      _watchChangesSubscription.cancel();
    });

    scheduleCall(loadInitialData);

    return HomeMoviesState();
  }
}

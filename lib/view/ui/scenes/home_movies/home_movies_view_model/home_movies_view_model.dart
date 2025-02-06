import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/home_movies_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../../home/model/media_tab.dart';
import 'home_movies_state.dart';

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
class HomeMoviesViewModel extends AutoDisposeNotifier<HomeMoviesState>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeMoviesUseCase _homeMoviesUseCase;

  @override
  HomeMoviesState build() {
    _homeMoviesUseCase = ref.read(homeMoviesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return HomeMoviesState();
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeMoviesBaseStatus(isLoading: showLoader));

    await safeCall(
      _homeMoviesUseCase.getSuggestedMovies,
      onResult: (result) => _handleMoviesResult(result, (data) {
        state = state.copyWithUpdSugMov(
          isInitialized: true,
          data: data,
        );
      }),
    );

    await _loadTabMovies();
  }

  void updateCurrentTab(MediaTab tab) {
    state = state.copyWith(currentTab: tab);

    state = state.copyWithUpdTabMov(
      isInitialized: false,
      data: PaginatedMovies(items: []),
    );

    _loadTabMovies();
  }

  Future<void> _loadTabMovies() {
    final action = _getMoviesTabAction();

    return safeCall(
      action,
      onResult: (result) => _handleMoviesResult(result, (data) {
        state = state.copyWithUpdTabMov(
          status: HomeMoviesBaseInitStatus(),
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  Future<Result<PaginatedMovies>> Function() _getMoviesTabAction() {
    return switch (state.currentTab) {
      MediaTab.nowPlaying => _homeMoviesUseCase.getNowPlayingMovies,
      MediaTab.upcoming => _homeMoviesUseCase.getUpcomingMovies,
      MediaTab.topRated => _homeMoviesUseCase.getTopRatedMovies,
      MediaTab.popular => _homeMoviesUseCase.getPopularMovies,
    };
  }

  void _handleMoviesResult(
    Result<PaginatedMovies> result,
    Function(PaginatedMovies data) onSuccess,
  ) {
    result.fold((error) {
      _updateStatus(HomeMoviesBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeMoviesStatus status) {
    state = state.copyWith(status: status);
  }
}

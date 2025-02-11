import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/home/home_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../model/media_tab.dart';
import 'home_media_state.dart';

typedef HomeMoviesState = HomeMediaState<MovieShortData>;

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
final class HomeMoviesViewModel extends _HomeMediaViewModel<MovieShortData> {
  @override
  HomeMoviesState build() {
    _homeUseCase = ref.read(homeMoviesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return HomeMoviesState();
  }
}

typedef HomeSeriesState = HomeMediaState<SeriesShortData>;

typedef HomeSeriesVSP = ASP<HomeSeriesViewModel, HomeSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [HomeSeriesViewModel] class.
///
/// This class is responsible for coordinating `home_series` behavior and interacting with the UI.
final homeSeriesViewModelPr = AutoDisposeNotifierProvider<HomeSeriesViewModel, HomeSeriesState>(
  HomeSeriesViewModel.new,
);

/// {@category StateManagement}
///
/// A view model for managing `home_series`-specific logic and state.
///
/// This class is responsible for coordinating `home_series` behavior and interacting with the UI.
final class HomeSeriesViewModel extends _HomeMediaViewModel<SeriesShortData> {
  @override
  HomeSeriesState build() {
    _homeUseCase = ref.read(homeSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return HomeSeriesState();
  }
}

abstract base class _HomeMediaViewModel<T>
    extends AutoDisposeNotifier<HomeMediaState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeUseCase<T> _homeUseCase;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _loadTabOperation;

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeMediaBaseStatus(isLoading: showLoader));

    await safeCall(
      _homeUseCase.getSuggested,
      onResult: (result) => _handleMediaResult(result, (data) {
        state = state.copyWithUpdSugCont(
          isInitialized: true,
          data: data,
        );
      }),
    );

    await _loadTabCont();
  }

  void updateCurrentTab(MediaTab tab) {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);

    state = state.copyWithUpdTabCont(
      isInitialized: false,
      data: ListWithPaginationData<T>(items: []),
    );

    _loadTabCont();
  }

  Future<void> loadTabNextPage(int page) {
    state = state.copyWithUpdTabCont(isNextPageLoading: true);

    return _loadTabCont(page: page, isNewPageLoaded: true);
  }

  Future<void> _loadTabCont(
      {int page = 1, bool isNewPageLoaded = false}) async {
    final action = _getTabAction();

    return safeCall(
      () async {
        _loadTabOperation?.cancel();
        _loadTabOperation = CancelableOperation.fromFuture(action(page: page));

        return _loadTabOperation?.valueOrCancellation();
      },
      onResult: (result) => _handleMediaResult(result, (data) {
        state = state.copyWithUpdTabCont(
          status: HomeMediaBaseInitStatus(),
          isNewPageLoaded: isNewPageLoaded,
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  Future<Result<ListWithPaginationData<T>>> Function({int page})
      _getTabAction() {
    return switch (state.currentTab) {
      MediaTab.nowPlaying => _homeUseCase.getNowPlaying,
      MediaTab.upcoming => _homeUseCase.getUpcoming,
      MediaTab.topRated => _homeUseCase.getTopRated,
      MediaTab.popular => _homeUseCase.getPopular,
    };
  }

  void _handleMediaResult(
    Result<ListWithPaginationData<T>>? result,
    Function(ListWithPaginationData<T> data) onSuccess,
  ) {
    result?.fold((error) {
      _updateStatus(HomeMediaBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeMediaStatus status) {
    state = state.copyWith(status: status);
  }
}

import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/home_series_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../../home/model/media_tab.dart';
import 'home_series_state.dart';

typedef HomeSeriesVSP = ASP<HomeSeriesViewModel, HomeSeriesState>;

/// {@category StateManagement}
///
/// A provider for the [HomeSeriesViewModel] class.
final homeSeriesViewModelPr =
    AutoDisposeNotifierProvider<HomeSeriesViewModel, HomeSeriesState>(
        HomeSeriesViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `home series`-specific logic and state.
///
/// This class is responsible for coordinating `home series` behavior and interacting with the UI.
class HomeSeriesViewModel extends AutoDisposeNotifier<HomeSeriesState>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeSeriesUseCase _homeSeriesUseCase;
  CancelableOperation<Result<PaginatedSeries>>? _loadTabOperation;

  @override
  HomeSeriesState build() {
    _homeSeriesUseCase = ref.read(homeSeriesUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return HomeSeriesState();
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeSeriesBaseStatus(isLoading: showLoader));

    await safeCall(
      _homeSeriesUseCase.getSuggestedSeries,
      onResult: (result) => _handleSeriesResult(result, (data) {
        state = state.copyWithUpdSugSer(
          isInitialized: true,
          data: data,
        );
      }),
    );

    await _loadTabSeries();
  }

  void updateCurrentTab(MediaTab tab) {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);

    state = state.copyWithUpdTabSer(
      isInitialized: false,
      data: PaginatedSeries(items: []),
    );

    _loadTabSeries();
  }

  Future<void> loadTabNextPage(int page) {
    state = state.copyWithUpdTabSer(isNextPageLoading: true);

    return _loadTabSeries(page: page, isNewPageLoaded: true);
  }

  Future<void> _loadTabSeries({int page = 1, bool isNewPageLoaded = false}) {
    final action = _getSeriesTabAction();

    return safeCall(
      () async {
        _loadTabOperation?.cancel();
        _loadTabOperation = CancelableOperation.fromFuture(action(page: page));

        return _loadTabOperation?.valueOrCancellation();
      },
      onResult: (result) => _handleSeriesResult(result, (data) {
        state = state.copyWithUpdTabSer(
          status: HomeSeriesBaseInitStatus(),
          isNewPageLoaded: isNewPageLoaded,
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  Future<Result<PaginatedSeries>> Function({int page}) _getSeriesTabAction() {
    return switch (state.currentTab) {
      MediaTab.nowPlaying => _homeSeriesUseCase.getNowPlayingSeries,
      MediaTab.upcoming => _homeSeriesUseCase.getUpcomingSeries,
      MediaTab.topRated => _homeSeriesUseCase.getTopRatedSeries,
      MediaTab.popular => _homeSeriesUseCase.getPopularSeries,
    };
  }

  void _handleSeriesResult(
    Result<PaginatedSeries>? result,
    Function(PaginatedSeries data) onSuccess,
  ) {
    result?.fold((error) {
      _updateStatus(HomeSeriesBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeSeriesStatus status) {
    state = state.copyWith(status: status);
  }
}

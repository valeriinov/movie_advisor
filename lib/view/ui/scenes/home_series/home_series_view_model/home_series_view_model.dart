import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/home_series_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../../home/model/media_tab.dart';
import 'home_series_state.dart';

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
    state = state.copyWith(currentTab: tab);

    state = state.copyWithUpdTabSer(
      isInitialized: false,
      data: PaginatedSeries(items: []),
    );

    _loadTabSeries();
  }

  Future<void> _loadTabSeries() {
    final action = _getSeriesTabAction();

    return safeCall(
      action,
      onResult: (result) => _handleSeriesResult(result, (data) {
        state = state.copyWithUpdTabSer(
          status: HomeSeriesBaseInitStatus(),
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  Future<Result<PaginatedSeries>> Function() _getSeriesTabAction() {
    return switch (state.currentTab) {
      MediaTab.nowPlaying => _homeSeriesUseCase.getNowPlayingSeries,
      MediaTab.upcoming => _homeSeriesUseCase.getUpcomingSeries,
      MediaTab.topRated => _homeSeriesUseCase.getTopRatedSeries,
      MediaTab.popular => _homeSeriesUseCase.getPopularSeries,
    };
  }

  void _handleSeriesResult(
    Result<PaginatedSeries> result,
    Function(PaginatedSeries data) onSuccess,
  ) {
    result.fold((error) {
      _updateStatus(HomeSeriesBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeSeriesStatus status) {
    state = state.copyWith(status: status);
  }
}

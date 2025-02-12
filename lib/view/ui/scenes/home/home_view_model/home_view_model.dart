import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/home/home_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_state.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';

import '../model/media_tab.dart';
import 'home_state.dart';

part 'home_movies_view_model.dart';

part 'home_series_view_model.dart';

final homeContModeViewModelPr = AutoDisposeNotifierProvider.family<
    ContentModeViewModel, ContentModeState, ContentMode>(
  ContentModeViewModel.new,
);

abstract base class _HomeViewModel<T> extends AutoDisposeNotifier<HomeState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeUseCase<T> _homeUseCase;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _loadTabOperation;

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

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
          status: HomeBaseInitStatus(),
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
      _updateStatus(HomeBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(HomeStatus status) {
    state = state.copyWith(status: status);
  }
}

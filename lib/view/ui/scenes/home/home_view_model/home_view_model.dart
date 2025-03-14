import 'dart:async';

import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/media_short_list_manager.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/home/home_use_case.dart';
import '../../../../../domain/usecases/refresh_use_case.dart';
import '../../../../../domain/usecases/settings_use_case.dart';
import '../../../../../domain/usecases/sync_use_case.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../model/media_tab.dart';
import 'home_state.dart';

part 'home_movies_view_model.dart';

part 'home_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [HomeViewModel] and [HomeState].
typedef HomeVSP = ASP<HomeViewModel, HomeState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to
/// provide an instance of [HomeViewModel].
///
/// The [T] parameter represents the [MediaShortData] type.
typedef HomeVMProvider<T extends MediaShortData> =
    AutoDisposeNotifierProvider<HomeViewModel<T>, HomeState<T>>;

typedef _TabAction<T extends MediaShortData> =
    Future<Result<ListWithPaginationData<T>>> Function({int page});

/// {@category StateManagement}
///
/// A base view model for managing `home`-specific logic and state.
///
/// This class is responsible for coordinating `home` behavior and interacting with the UI.
abstract base class HomeViewModel<T extends MediaShortData>
    extends AutoDisposeNotifier<HomeState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final HomeUseCase<T> _homeUseCase;
  late final WatchUseCase<T> _watchUseCase;
  late final SyncUseCase _syncUseCase;
  late final RefreshUseCase _refreshUseCase;
  late final SettingsUseCase _settingsUseCase;
  late final StreamSubscription<Result<T>> _watchChangesSubscription;
  late final StreamSubscription<Result<bool>> _refreshSubscription;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _loadTabOperation;

  void _handleWatchChanges(Result<T> event) {
    final item = event.fold((_) => null, (value) => value);

    if (item == null) return;

    final sugData = state.sugCont.mediaData;
    final tabData = state.tabCont.mediaData;

    final sugItems = sugData.items.updateItemInList(item);
    final tabItems = tabData.items.updateItemInList(item);

    state = state.copyWith(
      sugCont: state.sugCont.copyWith(
        mediaData: sugData.copyWith(items: sugItems),
      ),
      tabCont: state.tabCont.copyWith(
        mediaData: tabData.copyWith(items: tabItems),
      ),
    );
  }

  void _handleRefresh(Result<bool> event) {
    final shouldRefresh = event.fold((_) => null, (value) => value);

    if (shouldRefresh == true && !state.status.isLoading) {
      loadInitialData(showLoader: false);
    }
  }

  Future<void> _handleFirstLaunch() {
    return safeCall(
      _settingsUseCase.isFirstLaunch,
      onResult: (result) {
        result.fold((_) {}, (isFirstLaunch) async {
          if (!isFirstLaunch) return;

          _settingsUseCase.setFirstLaunch();
          _updateStatus(FirstLaunchStatus());
        });
      },
    );
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(HomeBaseStatus(isLoading: showLoader));

    await safeCall(
      _homeUseCase.getSuggested,
      onResult:
          (result) => _handleMediaResult(result, (data) {
            state = state.copyWithUpdSugCont(isInitialized: true, data: data);
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

  Future<void> _loadTabCont({
    int page = 1,
    bool isNewPageLoaded = false,
  }) async {
    final action = _getTabAction();

    return safeCall(
      () async {
        _loadTabOperation?.cancel();

        _loadTabOperation = CancelableOperation.fromFuture(action(page: page));

        return _loadTabOperation?.valueOrCancellation();
      },
      onResult:
          (result) => _handleMediaResult(result, (data) {
            state = state.copyWithUpdTabCont(
              status: HomeBaseInitStatus(),
              isNewPageLoaded: isNewPageLoaded,
              isInitialized: true,
              data: data,
            );
          }),
    );
  }

  _TabAction<T> _getTabAction() {
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

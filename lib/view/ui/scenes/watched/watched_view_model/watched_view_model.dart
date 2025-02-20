import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/media_short_list_manager.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_state.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import 'watched_state.dart';

part 'watched_movies_view_model.dart';

part 'watched_series_view_model.dart';

final watchedContModeViewModelPr = AutoDisposeNotifierProvider.family<
  ContentModeViewModel,
  ContentModeState,
  ContentMode
>(ContentModeViewModel.new);

typedef WatchedVSP = ASP<WatchedViewModel, WatchedState>;

typedef WatchedVMProvider<T extends MediaShortData> =
    AutoDisposeNotifierProvider<WatchedViewModel<T>, WatchedState<T>>;

abstract base class WatchedViewModel<T extends MediaShortData>
    extends AutoDisposeNotifier<WatchedState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final WatchUseCase<T> _watchUseCase;
  late final StreamSubscription<Result<T>> _watchChangesSubscription;

  void _handleWatchChanges(Result<T> event) {
    final item = event.fold((_) => null, (value) => value);

    if (item == null) return;

    final watchedData = state.watched.mediaData;

    final resultsItems = watchedData.items.handleWatchedItem(item);

    state = state.copyWith(
      watched: state.watched.copyWith(
        mediaData: watchedData.copyWith(items: resultsItems),
      ),
    );
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(WatchedBaseStatus(isLoading: showLoader));

    await _loadWatched();
  }

  Future<void> loadNextPage(int page) {
    state = state.copyWithUpdWatched(isNextPageLoading: true);

    return _loadWatched(page: page, isNewPageLoaded: true);
  }

  Future<void> _loadWatched({
    int page = 1,
    bool isNewPageLoaded = false,
  }) async {
    return safeCall(
      () => _watchUseCase.getWatched(page: page),
      onResult:
          (result) =>
              _handleWatchedResult(result, isNewPageLoaded: isNewPageLoaded),
    );
  }

  void _handleWatchedResult(
    Result<ListWithPaginationData<T>>? result, {
    required bool isNewPageLoaded,
  }) {
    result?.fold(
      (error) {
        _updateStatus(WatchedBaseInitStatus(errorMessage: error.message));
      },
      (data) {
        state = state.copyWithUpdWatched(
          status: WatchedBaseInitStatus(),
          isNewPageLoaded: isNewPageLoaded,
          isInitialized: true,
          data: data,
        );
      },
    );
  }

  void _updateStatus(WatchedStatus status) {
    state = state.copyWith(status: status);
  }
}

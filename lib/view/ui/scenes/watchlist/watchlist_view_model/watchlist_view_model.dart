import 'dart:async';

import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/media_short_list_manager.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/watchlist_filter_data.dart';
import '../../../../../domain/entities/watchlist_filter/watchlist_sort_by.dart';
import '../../../../../domain/usecases/sync_use_case.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
import '../../../../../domain/usecases/watchlist_filter/watchlist_filter_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import 'watchlist_state.dart';

part 'watchlist_movies_view_model.dart';

part 'watchlist_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [WatchlistViewModel] and [WatchlistState].
typedef WatchlistVSP = ASP<WatchlistViewModel, WatchlistState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to provide an instance of [WatchlistViewModel].
///
/// The [T] parameter represents the [MediaShortData] type.
/// The [F] parameter represents the [WatchlistFilterData] type.
typedef WatchlistVMProvider<
  T extends MediaShortData,
  F extends WatchlistFilterData
> = AutoDisposeNotifierProvider<WatchlistViewModel<T, F>, WatchlistState<T, F>>;

/// {@category StateManagement}
///
/// A base view model for managing `watchlist`-specific logic and state.
///
/// This class is responsible for coordinating `watchlist` behavior and interacting with the UI.
abstract base class WatchlistViewModel<
  T extends MediaShortData,
  F extends WatchlistFilterData
>
    extends AutoDisposeNotifier<WatchlistState<T, F>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final WatchUseCase<T> _watchUseCase;
  late final WatchlistFilterUseCase<T, F> _watchlistFilterUseCase;
  late final SyncUseCase _syncUseCase;
  late final StreamSubscription<Result<T>> _watchChangesSubscription;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _filterOperation;

  void _handleWatchChanges(Result<T> event) {
    final item = event.fold((_) => null, (value) => value);

    if (item == null) return;

    final watchlistData = state.watchlist.mediaData;

    final resultsItems = watchlistData.items.handleWatchlistItem(
      item,
      state.filter.sortBy,
    );

    state = state.copyWith(
      watchlist: state.watchlist.copyWith(
        mediaData: watchlistData.copyWith(items: resultsItems),
      ),
    );
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(WatchlistBaseStatus(isLoading: showLoader));

    await safeCall(
      _watchlistFilterUseCase.getSavedFilter,
      onResult: (result) {
        result.fold((_) {}, (filter) {
          if (filter == null) return;
          state = state.copyWith(filter: filter);
        });
      },
    );

    await _loadFilterResult();
  }

  Future<void> loadNextPage(int page) {
    state = state.copyWithUpdWatchlist(isNextPageLoading: true);

    return _loadFilterResult(page: page, isNewPageLoaded: true);
  }

  Future<void> _loadFilterResult({
    int page = 1,
    bool isNewPageLoaded = false,
  }) async {
    return safeCall(
      () async {
        _filterOperation?.cancel();

        _filterOperation = CancelableOperation.fromFuture(
          _watchlistFilterUseCase.getWatchlist(
            page: page,
            filter: state.filter,
          ),
        );

        return _filterOperation?.valueOrCancellation();
      },
      onResult: (result) =>
          _handleWatchlistResult(result, isNewPageLoaded: isNewPageLoaded),
    );
  }

  void _handleWatchlistResult(
    Result<ListWithPaginationData<T>>? result, {
    required bool isNewPageLoaded,
  }) {
    result?.fold(
      (error) {
        _updateStatus(WatchlistBaseInitStatus(errorMessage: error.message));
      },
      (data) {
        state = state.copyWithUpdWatchlist(
          status: WatchlistBaseInitStatus(),
          isNewPageLoaded: isNewPageLoaded,
          isInitialized: true,
          data: data,
        );
      },
    );
  }

  void updateSortBy(WatchlistSortBy sortBy) {
    _updateStatus(WatchlistBaseInitStatus(isLoading: true));

    final filter = state.filter.copyWith(sortBy: sortBy) as F;

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  void updateFilter(F filter) {
    _updateStatus(WatchlistBaseInitStatus(isLoading: true));

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  void _saveFilter() {
    _watchlistFilterUseCase.saveFilter(state.filter);
  }

  void _updateStatus(WatchlistStatus status) {
    state = state.copyWith(status: status);
  }
}

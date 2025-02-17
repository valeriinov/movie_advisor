import 'dart:async';

import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/media_short_list_manager.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/search/search_filter_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/search/search_use_case.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_state.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/filter_view_model/filter_state.dart';
import '../../../base/filter_view_model/filter_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import 'search_state.dart';

part 'search_movies_view_model.dart';
part 'search_series_view_model.dart';

final searchContModeViewModelPr = AutoDisposeNotifierProvider.family<
    ContentModeViewModel, ContentModeState, ContentMode>(
  ContentModeViewModel.new,
);

final searchFilterViewModelPr =
    AutoDisposeNotifierProvider<FilterViewModel, FilterState>(
  FilterViewModel.new,
);

abstract base class _SearchViewModel<T extends MediaShortData>
    extends AutoDisposeNotifier<SearchState<T>> with SafeOperationsMixin {
  late final SearchUseCase<T> _searchUseCase;
  late final WatchUseCase<T> _watchUseCase;
  late final StreamSubscription<Result<T>> _watchChangesSubscription;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _searchOperation;

  void _handleWatchChanges(Result<T> event) {
    final item = event.fold((_) => null, (value) => value);

    if (item == null) return;

    final resultsData = state.results.mediaData;

    final resultsItems = resultsData.items.updateItemInList(item);

    state = state.copyWith(
      results: state.results
          .copyWith(mediaData: resultsData.copyWith(items: resultsItems)),
    );
  }

  Future<void> loadByFilter(SearchFilterData filter, {bool showLoader = true}) {
    _updateStatus(SearchBaseInitStatus(isLoading: showLoader));

    return _loadSearchResult(filter);
  }

  Future<void> loadNextPage(SearchFilterData filter, int page) {
    state = state.copyWithUpdResults(isNextPageLoading: true);

    return _loadSearchResult(filter, page: page, isNewPageLoaded: true);
  }

  Future<void> _loadSearchResult(SearchFilterData filter,
      {int page = 1, bool isNewPageLoaded = false}) async {
    return safeCall(
      () async {
        _searchOperation?.cancel();

        _searchOperation = CancelableOperation.fromFuture(
          _searchUseCase.search(filter, page: page),
        );

        return _searchOperation?.valueOrCancellation();
      },
      onResult: (result) => _handleMediaResult(result, (data) {
        state = state.copyWithUpdResults(
          status: SearchBaseInitStatus(),
          isNewPageLoaded: isNewPageLoaded,
          isInitialized: true,
          data: data,
        );
      }),
    );
  }

  void _handleMediaResult(
    Result<ListWithPaginationData<T>>? result,
    Function(ListWithPaginationData<T> data) onSuccess,
  ) {
    result?.fold((error) {
      _updateStatus(SearchBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void _updateStatus(SearchStatus status) {
    state = state.copyWith(status: status);
  }
}

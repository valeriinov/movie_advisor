import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/search/search_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../../../widgets/content_mode_view_model/content_mode_state.dart';
import '../../../widgets/content_mode_view_model/content_mode_view_model.dart';
import 'search_state.dart';

part 'search_movies_view_model.dart';

part 'search_series_view_model.dart';

final searchContModeViewModelPr = AutoDisposeNotifierProvider.family<
    ContentModeViewModel, ContentModeState, ContentMode>(
  ContentModeViewModel.new,
);

abstract base class _SearchViewModel<T>
    extends AutoDisposeNotifier<SearchState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final SearchUseCase<T> _searchUseCase;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _searchOperation;

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(SearchBaseInitStatus(isLoading: showLoader));

    await _loadSearchResult();
  }

  void updateSearchQuery(String? query) {
    final updFilter = state.filter.copyWith(query: query);

    state = state.copyWith(filter: updFilter);
    _loadSearchResult();
  }

  Future<void> loadNextPage(int page){
    state = state.copyWithUpdResults(isNextPageLoading: true);

    return _loadSearchResult(page: page, isNewPageLoaded: true);
  }

  Future<void> _loadSearchResult(
      {int page = 1, bool isNewPageLoaded = false}) async {
    return safeCall(
      () async {
        _searchOperation?.cancel();

        _searchOperation = CancelableOperation.fromFuture(
          _searchUseCase.search(state.filter, page: page),
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

import 'dart:async';

import 'package:async/async.dart' hide Result;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/media_short_list_manager.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/country.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/series_filter_data.dart';
import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../../../domain/entities/movie/movie_genre.dart';
import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/entities/series/series_genre.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../../../domain/usecases/filter/filter_use_case.dart';
import '../../../../../domain/usecases/watch/watch_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import 'filter_state.dart';

part 'filter_movies_view_model.dart';

part 'filter_series_view_model.dart';

/// {@category StateManagement}
///
/// A type alias for [ASP] with [FilterViewModel] and [FilterState].
typedef FilterVSP = ASP<FilterViewModel, FilterState>;

/// {@category StateManagement}
///
/// A type alias for [AutoDisposeNotifierProvider] used to
/// provide an instance of [FilterViewModel].
///
/// The [T] parameter represents the [MediaShortData] type.
/// The [F] parameter represents the [FilterData] type.
/// The [G] parameter represents the genre type.
typedef FilterVMProvider<T extends MediaShortData, F extends FilterData, G> =
    AutoDisposeNotifierProvider<FilterViewModel<T, F, G>, FilterState<T, F>>;

/// {@category StateManagement}
///
/// A view model for managing `filter`-specific logic and state.
///
/// This class is responsible for coordinating `filter` behavior and interacting with the UI.
abstract base class FilterViewModel<
  T extends MediaShortData,
  F extends FilterData,
  G
>
    extends AutoDisposeNotifier<FilterState<T, F>>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final FilterUseCase<T, F> _filterUseCase;
  late final WatchUseCase<T> _watchUseCase;
  late final StreamSubscription<Result<T>> _watchChangesSubscription;
  CancelableOperation<Result<ListWithPaginationData<T>>>? _filterOperation;

  void _handleWatchChanges(Result<T> event) {
    final item = event.fold((_) => null, (value) => value);

    if (item == null) return;

    final resultsData = state.results.mediaData;

    final resultsItems = resultsData.items.updateItemInList(item);

    state = state.copyWith(
      results: state.results.copyWith(
        mediaData: resultsData.copyWith(items: resultsItems),
      ),
    );
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(FilterBaseStatus(isLoading: showLoader));

    await safeCall(
      _filterUseCase.getSavedFilter,
      onResult: (result) {
        result.fold((_) {}, (filter) {
          state = state.copyWith(filter: filter);
        });
      },
    );

    _loadFilterResult();
  }

  Future<void> loadNextPage(int page) {
    state = state.copyWithUpdResults(isNextPageLoading: true);

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
          _filterUseCase.filter(state.filter, page: page),
        );

        return _filterOperation?.valueOrCancellation();
      },
      onResult:
          (result) => _handleMediaResult(result, (data) {
            state = state.copyWithUpdResults(
              status: FilterBaseInitStatus(),
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
      _updateStatus(FilterBaseInitStatus(errorMessage: error.message));
    }, onSuccess);
  }

  void updateFilterYear(int? year) {
    final filter = state.filter.copyWith(year: year) as F;

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  void updateSortBy(SortBy sortBy) {
    final filter = state.filter.copyWith(sortBy: sortBy) as F;

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  void updateWithCountries(List<Country> withCountries) {
    final filter = state.filter.copyWith(withCountries: withCountries) as F;

    state = state.copyWith(filter: filter);

    _saveFilter();

    _loadFilterResult();
  }

  void updateWithGenres(List<G> withGenres);

  void updateWithoutGenres(List<G> withoutGenres);

  void _saveFilter() {
    _filterUseCase.saveFilter(state.filter);
  }

  void _updateStatus(FilterStatus status) {
    state = state.copyWith(status: status);
  }
}

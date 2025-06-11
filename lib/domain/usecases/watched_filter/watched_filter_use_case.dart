import '../../entities/base_media/media_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watched_filter/watched_filter_data.dart';

abstract interface class WatchedFilterUseCase<
  T extends MediaShortData,
  F extends WatchedFilterData
> {
  Future<Result<void>> saveFilter(F filter);

  Future<Result<F?>> getSavedFilter();

  Future<Result<ListWithPaginationData<T>>> getWatched({
    required int page,
    required F filter,
  });
}

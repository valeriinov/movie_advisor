import '../../entities/base_media/media_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watchlist_filter/watchlist_filter_data.dart';

abstract interface class WatchlistFilterUseCase<
  T extends MediaShortData,
  F extends WatchlistFilterData
> {
  Future<Result<void>> saveFilter(F filter);

  Future<Result<F?>> getSavedFilter();

  Future<Result<ListWithPaginationData<T>>> getWatchlist({
    required int page,
    required F filter,
  });
}

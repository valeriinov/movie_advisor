import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../repositories/watch_repository.dart';
import '../../repositories/watchlist_filter_repository.dart';
import 'watchlist_filter_use_case.dart';

class WatchlistSeriesFilterUseCase
    implements
        WatchlistFilterUseCase<SeriesShortData, SeriesWatchlistFilterData> {
  final WatchRepository _watchRepository;
  final WatchlistFilterRepository _filterRepository;

  WatchlistSeriesFilterUseCase({
    required WatchRepository watchRepository,
    required WatchlistFilterRepository filterRepository,
  }) : _filterRepository = filterRepository,
       _watchRepository = watchRepository;

  @override
  Future<Result<void>> saveFilter(SeriesWatchlistFilterData filter) {
    return _filterRepository.saveSeriesFilter(filter);
  }

  @override
  Future<Result<SeriesWatchlistFilterData?>> getSavedFilter() {
    return _filterRepository.getSavedSeriesFilter();
  }

  @override
  Future<Result<PaginatedSeries>> getWatchlist({
    required int page,
    SeriesWatchlistFilterData filter = const SeriesWatchlistFilterData(),
  }) {
    return _watchRepository.getWatchlistSeries(page: page, filter: filter);
  }
}

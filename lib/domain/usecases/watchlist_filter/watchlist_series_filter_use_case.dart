import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../repositories/watch_repository.dart';
import 'watchlist_filter_use_case.dart';

class WatchlistSeriesFilterUseCase
    implements
        WatchlistFilterUseCase<SeriesShortData, SeriesWatchlistFilterData> {
  final WatchRepository _repository;

  WatchlistSeriesFilterUseCase({required WatchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedSeries>> getWatchlist({
    required int page,
    SeriesWatchlistFilterData filter = const SeriesWatchlistFilterData(),
  }) {
    return _repository.getWatchlistSeries(page: page, filter: filter);
  }
}

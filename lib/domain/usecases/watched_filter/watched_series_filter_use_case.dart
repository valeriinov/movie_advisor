import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../entities/watched_filter/series_watched_filter_data.dart';
import '../../repositories/watch_repository.dart';
import '../../repositories/watched_filter_repository.dart';
import 'watched_filter_use_case.dart';

class WatchedSeriesFilterUseCase
    implements WatchedFilterUseCase<SeriesShortData, SeriesWatchedFilterData> {
  final WatchRepository _watchRepository;
  final WatchedFilterRepository _filterRepository;

  WatchedSeriesFilterUseCase({
    required WatchRepository watchRepository,
    required WatchedFilterRepository filterRepository,
  }) : _filterRepository = filterRepository,
       _watchRepository = watchRepository;

  @override
  Future<Result<void>> saveFilter(SeriesWatchedFilterData filter) {
    return _filterRepository.saveSeriesFilter(filter);
  }

  @override
  Future<Result<SeriesWatchedFilterData?>> getSavedFilter() {
    return _filterRepository.getSavedSeriesFilter();
  }

  @override
  Future<Result<PaginatedSeries>> getWatched({
    required int page,
    SeriesWatchedFilterData filter = const SeriesWatchedFilterData(),
  }) {
    return _watchRepository.getWatchedSeries(page: page, filter: filter);
  }
}

import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../entities/watched_filter/series_watched_filter_data.dart';
import '../../repositories/watch_repository.dart';
import 'watched_filter_use_case.dart';

class WatchedSeriesFilterUseCase
    implements WatchedFilterUseCase<SeriesShortData, SeriesWatchedFilterData> {
  final WatchRepository _repository;

  WatchedSeriesFilterUseCase({required WatchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedSeries>> getWatched({
    required int page,
    SeriesWatchedFilterData filter = const SeriesWatchedFilterData(),
  }) {
    return _repository.getWatchedSeries(page: page, filter: filter);
  }
}

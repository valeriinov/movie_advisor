import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/series/series_short_data.dart';
import '../../repositories/watch_repository.dart';
import 'watch_use_case.dart';

class WatchSeriesUseCase implements WatchUseCase<SeriesShortData> {
  final WatchRepository _repository;

  WatchSeriesUseCase({required WatchRepository repository})
      : _repository = repository;

  @override
  Stream<Result<SeriesShortData>> watchChanges() {
    return _repository.watchChangesSeries();
  }

  @override
  Future<Result<PaginatedSeries>> getWatchlist({required int page}) {
    return _repository.getWatchlistSeries(page: page);
  }

  @override
  Future<Result<PaginatedSeries>> getWatched({required int page}) {
    return _repository.getWatchedSeries(page: page);
  }

  @override
  Future<Result<void>> addToWatchlist(SeriesShortData data) {
    return _repository.addToWatchlistSeries(data);
  }

  @override
  Future<Result<void>> addToWatched(SeriesShortData data) {
    return _repository.addToWatchedSeries(data);
  }

  @override
  Future<Result<void>> removeFromWatchlist(int id) {
    return _repository.removeFromWatchlistSeries(id);
  }

  @override
  Future<Result<void>> removeFromWatched(int id) {
    return _repository.removeFromWatchedSeries(id);
  }
}

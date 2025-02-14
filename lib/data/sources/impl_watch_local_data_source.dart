import '../dto/movie/movie_short_data_dto.dart';
import '../dto/series/series_short_data_dto.dart';
import '../local/app_local_database.dart';
import '../repositories/watch/watch_local_data_source.dart';

class ImplWatchLocalDataSource implements WatchLocalDataSource {
  final AppLocalDatabase _database;

  ImplWatchLocalDataSource({required AppLocalDatabase database})
      : _database = database;

  @override
  Future<void> addToWatchedMovie(MovieShortDataDto data) {
    // TODO: implement addToWatchedMovie
    throw UnimplementedError();
  }

  @override
  Future<void> addToWatchedSeries(SeriesShortDataDto data) {
    // TODO: implement addToWatchedSeries
    throw UnimplementedError();
  }

  @override
  Future<void> addToWatchlistMovie(MovieShortDataDto data) {
    // TODO: implement addToWatchlistMovie
    throw UnimplementedError();
  }

  @override
  Future<void> addToWatchlistSeries(SeriesShortDataDto data) {
    // TODO: implement addToWatchlistSeries
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromWatchedMovie(int id) {
    // TODO: implement removeFromWatchedMovie
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromWatchedSeries(int id) {
    // TODO: implement removeFromWatchedSeries
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromWatchlistMovie(int id) {
    // TODO: implement removeFromWatchlistMovie
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromWatchlistSeries(int id) {
    // TODO: implement removeFromWatchlistSeries
    throw UnimplementedError();
  }
}

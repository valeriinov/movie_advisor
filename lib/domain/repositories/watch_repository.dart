import '../entities/movie/movie_short_data.dart';
import '../entities/result.dart';
import '../entities/series/series_short_data.dart';

abstract interface class WatchRepository {
  Future<Result<void>> addToWatchlistMovie(MovieShortData data);

  Future<Result<void>> addToWatchedMovie(MovieShortData data);

  Future<Result<void>> removeFromWatchlistMovie(int id);

  Future<Result<void>> removeFromWatchedMovie(int id);

  Future<Result<void>> addToWatchlistSeries(SeriesShortData data);

  Future<Result<void>> addToWatchedSeries(SeriesShortData data);

  Future<Result<void>> removeFromWatchlistSeries(int id);

  Future<Result<void>> removeFromWatchedSeries(int id);
}

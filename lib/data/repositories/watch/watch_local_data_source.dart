import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';

abstract interface class WatchLocalDataSource {
  Future<void> addToWatchlistMovie(MovieShortDataDto data);

  Future<void> addToWatchedMovie(MovieShortDataDto data);

  Future<void> removeFromWatchlistMovie(int id);

  Future<void> removeFromWatchedMovie(int id);

  Future<void> addToWatchlistSeries(SeriesShortDataDto data);

  Future<void> addToWatchedSeries(SeriesShortDataDto data);

  Future<void> removeFromWatchlistSeries(int id);

  Future<void> removeFromWatchedSeries(int id);
}

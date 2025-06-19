import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movie_watch_event_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../dto/series/series_watch_event_data_dto.dart';

abstract interface class WatchRemoteDataSource {
  Future<MovieShortDataDto> getLocalizedMovie(MovieShortDataDto data);

  Future<void> addToWatchlistMovie(MovieShortDataDto data);

  Future<void> addToWatchedMovie(MovieShortDataDto data);

  Future<void> removeFromWatchlistMovie(int id);

  Future<void> removeFromWatchedMovie(int id);

  Future<SeriesShortDataDto> getLocalizedSeries(SeriesShortDataDto data);

  Future<void> addToWatchlistSeries(SeriesShortDataDto data);

  Future<void> addToWatchedSeries(SeriesShortDataDto data);

  Future<void> removeFromWatchlistSeries(int id);

  Future<void> removeFromWatchedSeries(int id);

  Future<void> addMovieEvent(MovieWatchEventDataDto data);

  Future<void> addSeriesEvent(SeriesWatchEventDataDto data);
}

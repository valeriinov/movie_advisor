import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movie_watch_event_data_dto.dart';
import '../../dto/movie/movies_short_response_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../dto/series/series_short_response_data_dto.dart';
import '../../dto/series/series_watch_event_data_dto.dart';

abstract interface class WatchLocalDataSource {
  Stream<MovieShortDataDto> watchChangesMovies();

  Stream<SeriesShortDataDto> watchChangesSeries();

  Future<MoviesShortResponseDataDto> getWatchlistMovies({required int page});

  Future<MoviesShortResponseDataDto> getWatchedMovies({required int page});

  Future<SeriesShortResponseDataDto> getWatchlistSeries({required int page});

  Future<SeriesShortResponseDataDto> getWatchedSeries({required int page});

  Future<void> addToWatchlistMovie(MovieShortDataDto data);

  Future<void> addToWatchedMovie(MovieShortDataDto data);

  Future<void> removeFromWatchlistMovie(int id);

  Future<void> removeFromWatchedMovie(int id);

  Future<void> addToWatchlistSeries(SeriesShortDataDto data);

  Future<void> addToWatchedSeries(SeriesShortDataDto data);

  Future<void> removeFromWatchlistSeries(int id);

  Future<void> removeFromWatchedSeries(int id);

  Future<void> addMovieEvent(MovieWatchEventDataDto data);

  Future<void> addSeriesEvent(SeriesWatchEventDataDto data);
}

import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movie_watch_event_data_dto.dart';
import '../../dto/movie/movies_short_response_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../dto/series/series_short_response_data_dto.dart';
import '../../dto/series/series_watch_event_data_dto.dart';
import '../../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';

abstract interface class WatchLocalDataSource {
  Stream<MovieShortDataDto> watchChangesMovies();

  Stream<SeriesShortDataDto> watchChangesSeries();

  Future<MoviesShortResponseDataDto> getWatchlistMovies({
    required int page,
    required MoviesWatchlistFilterDataDto filter,
  });

  Future<MoviesShortResponseDataDto> getWatchedMovies({
    required int page,
    required MoviesWatchedFilterDataDto filter,
  });

  Future<SeriesShortResponseDataDto> getWatchlistSeries({
    required int page,
    required SeriesWatchlistFilterDataDto filter,
  });

  Future<SeriesShortResponseDataDto> getWatchedSeries({
    required int page,
    required SeriesWatchedFilterDataDto filter,
  });

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

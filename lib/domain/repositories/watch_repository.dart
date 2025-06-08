import '../entities/movie/movie_short_data.dart';
import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../entities/series/series_short_data.dart';
import '../entities/watched_filter/movies_watched_filter_data.dart';
import '../entities/watched_filter/series_watched_filter_data.dart';
import '../entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../entities/watchlist_filter/series_watchlist_filter_data.dart';

abstract interface class WatchRepository {
  Stream<Result<MovieShortData>> watchChangesMovies();

  Stream<Result<SeriesShortData>> watchChangesSeries();

  Future<Result<PaginatedMovies>> getWatchlistMovies({
    required int page,
    required MoviesWatchlistFilterData filter,
  });

  Future<Result<PaginatedMovies>> getWatchedMovies({
    required int page,
    required MoviesWatchedFilterData filter,
  });

  Future<Result<PaginatedSeries>> getWatchlistSeries({
    required int page,
    required SeriesWatchlistFilterData filter,
  });

  Future<Result<PaginatedSeries>> getWatchedSeries({
    required int page,
    required SeriesWatchedFilterData filter,
  });

  Future<Result<void>> addToWatchlistMovie(MovieShortData data);

  Future<Result<void>> addToWatchedMovie(
    MovieShortData data, {
    required bool deleteFromWatchlistIfExists,
  });

  Future<Result<void>> removeFromWatchlistMovie(int id);

  Future<Result<void>> removeFromWatchedMovie(int id);

  Future<Result<void>> addToWatchlistSeries(SeriesShortData data);

  Future<Result<void>> addToWatchedSeries(
    SeriesShortData data, {
    required bool deleteFromWatchlistIfExists,
  });

  Future<Result<void>> removeFromWatchlistSeries(int id);

  Future<Result<void>> removeFromWatchedSeries(int id);
}

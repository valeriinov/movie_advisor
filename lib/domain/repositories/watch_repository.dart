import '../entities/movie/movie_short_data.dart';
import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../entities/series/series_short_data.dart';

abstract interface class WatchRepository {
  Stream<Result<MovieShortData>> watchChangesMovies();

  Stream<Result<SeriesShortData>> watchChangesSeries();

  Future<Result<PaginatedMovies>> getWatchlistMovies({required int page});

  Future<Result<PaginatedMovies>> getWatchedMovies({required int page});

  Future<Result<PaginatedSeries>> getWatchlistSeries({required int page});

  Future<Result<PaginatedSeries>> getWatchedSeries({required int page});

  Future<Result<void>> addToWatchlistMovie(MovieShortData data);

  Future<Result<void>> addToWatchedMovie(MovieShortData data);

  Future<Result<void>> removeFromWatchlistMovie(int id);

  Future<Result<void>> removeFromWatchedMovie(int id);

  Future<Result<void>> addToWatchlistSeries(SeriesShortData data);

  Future<Result<void>> addToWatchedSeries(SeriesShortData data);

  Future<Result<void>> removeFromWatchlistSeries(int id);

  Future<Result<void>> removeFromWatchedSeries(int id);
}

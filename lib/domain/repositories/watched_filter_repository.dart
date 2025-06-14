import '../entities/result.dart';
import '../entities/watched_filter/movies_watched_filter_data.dart';
import '../entities/watched_filter/series_watched_filter_data.dart';

abstract interface class WatchedFilterRepository {
  Future<Result<void>> saveMoviesFilter(MoviesWatchedFilterData filter);

  Future<Result<void>> saveSeriesFilter(SeriesWatchedFilterData filter);

  Future<Result<MoviesWatchedFilterData?>> getSavedMoviesFilter();

  Future<Result<SeriesWatchedFilterData?>> getSavedSeriesFilter();
}

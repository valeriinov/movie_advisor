import '../entities/result.dart';
import '../entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../entities/watchlist_filter/series_watchlist_filter_data.dart';

abstract interface class WatchlistFilterRepository {
  Future<Result<void>> saveMoviesFilter(MoviesWatchlistFilterData filter);

  Future<Result<void>> saveSeriesFilter(SeriesWatchlistFilterData filter);

  Future<Result<MoviesWatchlistFilterData?>> getSavedMoviesFilter();

  Future<Result<SeriesWatchlistFilterData?>> getSavedSeriesFilter();
}

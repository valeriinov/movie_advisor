import '../../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';

abstract interface class WatchlistFilterLocalDataSource {
  Future<void> saveMoviesFilter(MoviesWatchlistFilterDataDto filter);

  Future<void> saveSeriesFilter(SeriesWatchlistFilterDataDto filter);

  Future<MoviesWatchlistFilterDataDto?> getSavedMoviesFilter();

  Future<SeriesWatchlistFilterDataDto?> getSavedSeriesFilter();
}

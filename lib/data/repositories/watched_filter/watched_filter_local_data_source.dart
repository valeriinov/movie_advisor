import '../../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../../dto/watched_filter/series_watched_filter_data_dto.dart';

abstract interface class WatchedFilterLocalDataSource {
  Future<void> saveMoviesFilter(MoviesWatchedFilterDataDto filter);

  Future<void> saveSeriesFilter(SeriesWatchedFilterDataDto filter);

  Future<MoviesWatchedFilterDataDto?> getSavedMoviesFilter();

  Future<SeriesWatchedFilterDataDto?> getSavedSeriesFilter();
}

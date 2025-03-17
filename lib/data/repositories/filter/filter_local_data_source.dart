import '../../dto/filter/movies_filter_data_dto.dart';
import '../../dto/filter/series_filter_data_dto.dart';

abstract interface class FilterLocalDataSource {
  Future<MoviesFilterDataDto?> getSavedMoviesFilter();

  Future<SeriesFilterDataDto?> getSavedSeriesFilter();

  Future<void> saveMoviesFilter(MoviesFilterDataDto filter);

  Future<void> saveSeriesFilter(SeriesFilterDataDto filter);
}

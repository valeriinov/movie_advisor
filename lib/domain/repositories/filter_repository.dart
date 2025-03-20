import '../entities/filter/movies_filter_data.dart';
import '../entities/filter/series_filter_data.dart';
import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';

abstract interface class FilterRepository {
  Future<Result<MoviesFilterData?>> getSavedMoviesFilter();

  Future<Result<SeriesFilterData?>> getSavedSeriesFilter();

  Future<Result<void>> saveMoviesFilter(MoviesFilterData filter);

  Future<Result<void>> saveSeriesFilter(SeriesFilterData filter);

  Future<Result<PaginatedMovies>> filterMovies(
    MoviesFilterData filter, {
    required int page,
  });

  Future<Result<PaginatedSeries>> filterSeries(
    SeriesFilterData filter, {
    required int page,
  });
}

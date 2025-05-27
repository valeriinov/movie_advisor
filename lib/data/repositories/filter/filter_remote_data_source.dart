import '../../dto/filter/movies_filter_data_dto.dart';
import '../../dto/filter/series_filter_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';

abstract interface class FilterRemoteDataSource {
  Future<MoviesResponseDataDto> filterMovies(
    MoviesFilterDataDto filter, {
    required List<int> excludeIds,
    required int page,
  });

  Future<SeriesResponseDataDto> filterSeries(
    SeriesFilterDataDto filter, {
    required List<int> excludeIds,
    required int page,
  });
}

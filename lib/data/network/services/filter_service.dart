import '../../dto/filter/movies_filter_data_dto.dart';
import '../../dto/filter/series_filter_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';

class FilterService {
  Future<MoviesResponseDataDto> filterMovies(
    MoviesFilterDataDto filter, {
    required int page,
  }) {
    // TODO: implement filterMovies
    throw UnimplementedError();
  }

  Future<SeriesResponseDataDto> filterSeries(
    SeriesFilterDataDto filter, {
    required int page,
  }) {
    // TODO: implement filterSeries
    throw UnimplementedError();
  }
}

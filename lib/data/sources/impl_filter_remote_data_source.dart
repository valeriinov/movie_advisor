import '../dto/filter/movies_filter_data_dto.dart';
import '../dto/filter/series_filter_data_dto.dart';
import '../dto/movie/movies_response_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../network/services/filter_service.dart';
import '../repositories/filter/filter_remote_data_source.dart';

class ImplFilterRemoteDataSource implements FilterRemoteDataSource {
  final FilterService _service;

  ImplFilterRemoteDataSource({required FilterService service})
    : _service = service;

  @override
  Future<MoviesResponseDataDto> filterMovies(
    MoviesFilterDataDto filter, {
    required int page,
  }) {
    return _service.filterMovies(filter, page: page);
  }

  @override
  Future<SeriesResponseDataDto> filterSeries(
    SeriesFilterDataDto filter, {
    required int page,
  }) {
    return _service.filterSeries(filter, page: page);
  }
}

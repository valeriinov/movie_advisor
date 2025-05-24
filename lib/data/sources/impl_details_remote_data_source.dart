import '../dto/movie/movie_data_dto.dart';
import '../dto/series/series_data_dto.dart';
import '../network/services/details_service.dart';
import '../repositories/details/details_remote_data_source.dart';

class ImplDetailsRemoteDataSource implements DetailsRemoteDataSource {
  final DetailsService _service;

  ImplDetailsRemoteDataSource({required DetailsService service})
    : _service = service;

  @override
  Future<MovieDataDto> getDetailsMovie(int id) {
    return _service.getDetailsMovie(id);
  }

  @override
  Future<SeriesDataDto> getDetailsSeries(int id) {
    return _service.getDetailsSeries(id);
  }
}

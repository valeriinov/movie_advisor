import '../dto/movie/movies_response_data_dto.dart';
import '../dto/search/search_filter_data_dto.dart';
import '../dto/series/series_response_data_dto.dart';
import '../network/services/search_service.dart';
import '../repositories/search/search_remote_data_source.dart';

class ImplSearchRemoteDataSource implements SearchRemoteDataSource {
  final SearchService _service;

  ImplSearchRemoteDataSource({required SearchService service})
      : _service = service;

  @override
  Future<MoviesResponseDataDto> searchMovies(SearchFilterDataDto filter,
      {required int page}) {
    return _service.searchMovies(filter, page: page);
  }

  @override
  Future<SeriesResponseDataDto> searchSeries(SearchFilterDataDto filter,
      {required int page}) {
    return _service.searchSeries(filter, page: page);
  }
}

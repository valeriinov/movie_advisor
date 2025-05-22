import '../../../dto/movie/movies_response_data_dto.dart';
import '../../../dto/series/series_response_data_dto.dart';

abstract interface class MediaDiscoverer {
  Future<MoviesResponseDataDto> discoverMovies(
    int page,
    List<int> excludeIds,
    Map<String, dynamic> queryParameters,
  );

  Future<SeriesResponseDataDto> discoverSeries(
    int page,
    List<int> excludeIds,
    Map<String, dynamic> queryParameters,
  );
}

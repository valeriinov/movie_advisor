import '../../dto/movie/movie_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class DetailsService {
  final NetworkManager _mediaApiClient;
  final ImageUrlHandler _imageUrlHandler;

  DetailsService({
    required NetworkManager mediaApiClient,
    required ImageUrlHandler imageUrlHandler,
  })  : _mediaApiClient = mediaApiClient,
        _imageUrlHandler = imageUrlHandler;

  Future<MovieDataDto> getDetailsMovie(int id) async {
    final result = await _mediaApiClient.get('/movie/$id');

    final dto = MovieDataDto.fromJson(result.data);

    return _imageUrlHandler.handleMovieImages(dto);
  }

  Future<SeriesDataDto> getDetailsSeries(int id) async {
    final result = await _mediaApiClient.get('/tv/$id');

    final dto = SeriesDataDto.fromJson(result.data);

    return _imageUrlHandler.handleSeriesImages(dto);
  }
}

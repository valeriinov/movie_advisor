import 'package:flutter_utils/flutter_utils.dart';

import '../../dto/movie/movies_response_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class HomeService {
  final NetworkManager _moviesApiClient;
  final ImageUrlHandler _imageUrlHandler;

  HomeService({
    required NetworkManager moviesApiClient,
    required ImageUrlHandler imageUrlHandler,
  })  : _moviesApiClient = moviesApiClient,
        _imageUrlHandler = imageUrlHandler;

  Future<void> getNowPlayingMovies() async {
    final result = await _moviesApiClient.get('/movie/now_playing');

    final rawDto = MoviesResponseDataDto.fromJson(result.data);
    final results = _imageUrlHandler.handleMoviesImages(rawDto.results ?? []);
    final resultDto = rawDto.copyWith(results: results);

    debugLog('[RESULT DTO]: $resultDto', prettyPrint: true);
  }
}

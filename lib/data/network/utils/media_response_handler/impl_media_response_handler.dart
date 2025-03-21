import '../../../dto/movie/movies_response_data_dto.dart';
import '../../../dto/series/series_response_data_dto.dart';
import '../../network_manager/net_response.dart';
import '../image_url_handler/image_url_handler.dart';
import 'media_response_handler.dart';

class ImpMediaResponseHandler implements MediaResponseHandler {
  final ImageUrlHandler _imageUrlHandler;

  ImpMediaResponseHandler({required ImageUrlHandler imageUrlHandler})
    : _imageUrlHandler = imageUrlHandler;

  @override
  MoviesResponseDataDto handleMoviesResponse(
    NetResponse response, {
    bool removeWithoutPoster = false,
  }) {
    final rawDto = MoviesResponseDataDto.fromJson(response.data);
    final rawResults =
        removeWithoutPoster
            ? rawDto.results?.where((e) => e.posterPath != null).toList()
            : rawDto.results;

    final results = _imageUrlHandler.handleMoviesListImages(rawResults ?? []);

    return rawDto.copyWith(results: results);
  }

  @override
  SeriesResponseDataDto handleSeriesResponse(
    NetResponse response, {
    bool removeWithoutPoster = false,
  }) {
    final rawDto = SeriesResponseDataDto.fromJson(response.data);
    final rawResults =
        removeWithoutPoster
            ? rawDto.results?.where((e) => e.posterPath != null).toList()
            : rawDto.results;

    final results = _imageUrlHandler.handleSeriesListImages(rawResults ?? []);

    return rawDto.copyWith(results: results);
  }
}

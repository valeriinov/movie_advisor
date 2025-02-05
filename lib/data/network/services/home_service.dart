import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../network_manager/net_response.dart';
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

  Future<MoviesResponseDataDto> getSuggestedMovies() async {
    final result = await _moviesApiClient.get('/movie/top_rated');

    return _handleMoviesResult(result);
  }

  Future<MoviesResponseDataDto> getNowPlayingMovies({required int page}) async {
    final result =
        await _moviesApiClient.get('/movie/now_playing', queryParameters: {
      'page': page,
    });

    return _handleMoviesResult(result);
  }

  Future<MoviesResponseDataDto> getUpcomingMovies({required int page}) async {
    final result =
        await _moviesApiClient.get('/movie/upcoming', queryParameters: {
      'page': page,
    });

    return _handleMoviesResult(result);
  }

  Future<MoviesResponseDataDto> getTopRatedMovies({required int page}) async {
    final result =
        await _moviesApiClient.get('/movie/top_rated', queryParameters: {
      'page': page,
    });

    return _handleMoviesResult(result);
  }

  Future<MoviesResponseDataDto> getPopularMovies({required int page}) async {
    final result =
        await _moviesApiClient.get('/movie/popular', queryParameters: {
      'page': page,
    });

    return _handleMoviesResult(result);
  }

  MoviesResponseDataDto _handleMoviesResult(NetResponse<dynamic> result) {
    final rawDto = MoviesResponseDataDto.fromJson(result.data);
    final results = _imageUrlHandler.handleMoviesImages(rawDto.results ?? []);

    return rawDto.copyWith(results: results);
  }

  Future<SeriesResponseDataDto> getSuggestedSeries() async {
    final result = await _moviesApiClient.get('/tv/top_rated');

    return _handleSeriesResult(result);
  }

  Future<SeriesResponseDataDto> getAiringTodaySeries(
      {required int page}) async {
    final result =
        await _moviesApiClient.get('/tv/airing_today', queryParameters: {
      'page': page,
    });

    return _handleSeriesResult(result);
  }

  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page}) async {
    final result =
        await _moviesApiClient.get('/tv/on_the_air', queryParameters: {
      'page': page,
    });

    return _handleSeriesResult(result);
  }

  Future<SeriesResponseDataDto> getTopRatedSeries({required int page}) async {
    final result =
        await _moviesApiClient.get('/tv/top_rated', queryParameters: {
      'page': page,
    });

    return _handleSeriesResult(result);
  }

  Future<SeriesResponseDataDto> getPopularSeries({required int page}) async {
    final result = await _moviesApiClient.get('/tv/popular', queryParameters: {
      'page': page,
    });

    return _handleSeriesResult(result);
  }

  SeriesResponseDataDto _handleSeriesResult(NetResponse<dynamic> result) {
    final rawDto = SeriesResponseDataDto.fromJson(result.data);
    final results = _imageUrlHandler.handleSeriesImages(rawDto.results ?? []);

    return rawDto.copyWith(results: results);
  }
}

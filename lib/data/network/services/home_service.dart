import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/media_response_handler/media_response_handler.dart';

class HomeService {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;

  HomeService({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
  })  : _mediaApiClient = mediaApiClient,
        _responseHandler = responseHandler;

  Future<MoviesResponseDataDto> getSuggestedMovies() async {
    final result = await _mediaApiClient.get('/movie/top_rated');

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getNowPlayingMovies({required int page}) async {
    final result =
        await _mediaApiClient.get('/movie/now_playing', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getUpcomingMovies({required int page}) async {
    final result =
        await _mediaApiClient.get('/movie/upcoming', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getTopRatedMovies({required int page}) async {
    final result =
        await _mediaApiClient.get('/movie/top_rated', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getPopularMovies({required int page}) async {
    final result =
        await _mediaApiClient.get('/movie/popular', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<SeriesResponseDataDto> getSuggestedSeries() async {
    final result = await _mediaApiClient.get('/tv/top_rated');

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getAiringTodaySeries(
      {required int page}) async {
    final result =
        await _mediaApiClient.get('/tv/airing_today', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page}) async {
    final result =
        await _mediaApiClient.get('/tv/on_the_air', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getTopRatedSeries({required int page}) async {
    final result = await _mediaApiClient.get('/tv/top_rated', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getPopularSeries({required int page}) async {
    final result = await _mediaApiClient.get('/tv/popular', queryParameters: {
      'page': page,
    });

    return _responseHandler.handleSeriesResponse(result);
  }
}

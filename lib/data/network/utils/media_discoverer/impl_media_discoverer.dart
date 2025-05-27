import '../../../../common/constants/db_constants.dart';
import '../../../dto/movie/movie_data_dto.dart';
import '../../../dto/movie/movies_response_data_dto.dart';
import '../../../dto/series/series_data_dto.dart';
import '../../../dto/series/series_response_data_dto.dart';
import '../../network_manager/network_manager.dart';
import '../media_response_handler/media_response_handler.dart';
import 'media_discoverer.dart';

class ImplMediaDiscoverer implements MediaDiscoverer {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;

  ImplMediaDiscoverer({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
  }) : _mediaApiClient = mediaApiClient,
       _responseHandler = responseHandler;

  @override
  Future<MoviesResponseDataDto> discoverMovies(
    int page,
    List<int> excludeIds,
    Map<String, dynamic> queryParameters,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    final List<MovieDataDto> accumulatedMovies = [];

    int currentPage = page;
    int totalPages = page;

    while (accumulatedMovies.length < desiredCount) {
      final response = await _getRawMovies(currentPage, queryParameters);

      totalPages = response.totalPages ?? currentPage;

      final filteredMovies = _filterMovies(response.results, excludeIds);

      accumulatedMovies.addAll(filteredMovies);

      if (currentPage >= totalPages ||
          accumulatedMovies.length >= desiredCount) {
        break;
      }

      currentPage++;
    }

    return MoviesResponseDataDto(
      page: currentPage,
      totalPages: totalPages,
      results: accumulatedMovies,
    );
  }

  Future<MoviesResponseDataDto> _getRawMovies(
    int page,
    Map<String, dynamic> queryParameters,
  ) async {
    final params = _addPageToParams(queryParameters, page);

    final result = await _mediaApiClient.get(
      '/discover/movie',
      queryParameters: params,
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  List<MovieDataDto> _filterMovies(
    List<MovieDataDto>? movies,
    List<int> excludeIds,
  ) {
    return movies?.where((movie) {
          return !excludeIds.contains(movie.id);
        }).toList() ??
        [];
  }

  @override
  Future<SeriesResponseDataDto> discoverSeries(
    int page,
    List<int> excludeIds,
    Map<String, dynamic> queryParameters,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    final List<SeriesDataDto> accumulatedSeries = [];

    int currentPage = page;
    int totalPages = page;

    while (accumulatedSeries.length < desiredCount) {
      final response = await _getRawSeries(currentPage, queryParameters);

      totalPages = response.totalPages ?? currentPage;

      final filteredSeries = _filterSeries(response.results, excludeIds);

      accumulatedSeries.addAll(filteredSeries);

      if (currentPage >= totalPages ||
          accumulatedSeries.length >= desiredCount) {
        break;
      }

      currentPage++;
    }

    return SeriesResponseDataDto(
      page: currentPage,
      totalPages: totalPages,
      results: accumulatedSeries,
    );
  }

  Future<SeriesResponseDataDto> _getRawSeries(
    int page,
    Map<String, dynamic> queryParameters,
  ) async {
    final params = _addPageToParams(queryParameters, page);

    final result = await _mediaApiClient.get(
      '/discover/tv',
      queryParameters: params,
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  List<SeriesDataDto> _filterSeries(
    List<SeriesDataDto>? series,
    List<int> excludeIds,
  ) {
    return series?.where((seriesItem) {
          return !excludeIds.contains(seriesItem.id);
        }).toList() ??
        [];
  }

  Map<String, dynamic> _addPageToParams(
    Map<String, dynamic> queryParameters,
    int page,
  ) {
    return {...queryParameters, 'page': page};
  }
}

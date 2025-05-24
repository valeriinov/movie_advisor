import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/search/search_filter_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/media_response_handler/media_response_handler.dart';

class SearchService {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;

  SearchService({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
  }) : _mediaApiClient = mediaApiClient,
       _responseHandler = responseHandler;

  Future<MoviesResponseDataDto> searchMovies(
    SearchFilterDataDto filter, {
    required int page,
  }) async {
    final queryParameters = _buildQueryParameters(filter, page);

    final result = await _mediaApiClient.get(
      '/search/movie',
      queryParameters: queryParameters,
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<SeriesResponseDataDto> searchSeries(
    SearchFilterDataDto filter, {
    required int page,
  }) async {
    final queryParameters = _buildQueryParameters(filter, page);

    final result = await _mediaApiClient.get(
      '/search/tv',
      queryParameters: queryParameters,
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Map<String, dynamic> _buildQueryParameters(
    SearchFilterDataDto filter,
    int page,
  ) {
    final params = <String, dynamic>{'page': page};

    if (_hasQuery(filter)) {
      params['query'] = filter.query;
    }

    return params;
  }

  bool _hasQuery(SearchFilterDataDto filter) {
    return filter.query != null && filter.query!.trim().isNotEmpty;
  }
}

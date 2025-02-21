import 'package:flutter_utils/ext/dart_ext/iterable/empty_iterable_handler.dart';

import '../../../common/constants/db_constants.dart';
import '../../dto/movie/movie_data_dto.dart';
import '../../dto/movie/movie_genre_dto.dart';
import '../../dto/movie/movie_rate_filter_data_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_data_dto.dart';
import '../../dto/series/series_genre_dto.dart';
import '../../dto/series/series_rate_filter_data_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/media_response_handler/media_response_handler.dart';

class HomeService {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;

  HomeService({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
  }) : _mediaApiClient = mediaApiClient,
       _responseHandler = responseHandler;

  Future<MoviesResponseDataDto> getSuggestedMovies(
    MovieRateFilterDataDto filter,
  ) async {
    final suggestions = await _accumulateMovies(filter);

    return MoviesResponseDataDto(results: suggestions);
  }

  Future<List<MovieDataDto>> _accumulateMovies(
    MovieRateFilterDataDto filter,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    int currentPage = 1;
    final List<MovieDataDto> accumulatedMovies = [];

    while (accumulatedMovies.length < desiredCount) {
      final moviesResponse = await _fetchMoviesResponse(filter, currentPage);
      final filteredMovies = _filterMovies(moviesResponse.results, filter);

      if (filteredMovies.isEmpty) break;

      accumulatedMovies.addAll(filteredMovies);

      if (_isLastMoviesPage(moviesResponse)) break;

      currentPage++;
    }

    return accumulatedMovies.length > desiredCount
        ? accumulatedMovies.sublist(0, desiredCount)
        : accumulatedMovies;
  }

  Future<MoviesResponseDataDto> _fetchMoviesResponse(
    MovieRateFilterDataDto filter,
    int page,
  ) async {
    final queryParams = _buildMoviesQueryParams(filter, page);

    final result = await _mediaApiClient.get(
      '/discover/movie',
      queryParameters: queryParams,
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Map<String, dynamic> _buildMoviesQueryParams(
    MovieRateFilterDataDto filter,
    int page,
  ) {
    final params = {
      'sort_by': 'popularity.desc',
      'vote_average.gte': '${DbConstants.minTargetTmdbRate}',
      'vote_count.gte': '${DbConstants.minTmdbVoteCount}',
      'page': page,
    };

    final targetGenres = filter.targetGenres;

    if (targetGenres.isNotNullAndNotEmpty) {
      final genreIds = targetGenres!
          .map((genre) => genre.toValue().toString())
          .join('|');

      params['with_genres'] = genreIds;
    }

    return params;
  }

  List<MovieDataDto> _filterMovies(
    List<MovieDataDto>? movies,
    MovieRateFilterDataDto filter,
  ) {
    final excludeIds = filter.excludeIds ?? [];
    final processedMovies = movies ?? [];

    return processedMovies.where((movie) {
      return !excludeIds.contains(movie.id);
    }).toList();
  }

  bool _isLastMoviesPage(MoviesResponseDataDto response) {
    return response.page != null &&
        response.totalPages != null &&
        response.page == response.totalPages;
  }

  Future<MoviesResponseDataDto> getNowPlayingMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/now_playing',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getUpcomingMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/upcoming',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getTopRatedMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/top_rated',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<MoviesResponseDataDto> getPopularMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/popular',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Future<SeriesResponseDataDto> getSuggestedSeries(
    SeriesRateFilterDataDto filter,
  ) async {
    final suggestions = await _accumulateSeries(filter);

    return SeriesResponseDataDto(results: suggestions);
  }

  Future<List<SeriesDataDto>> _accumulateSeries(
    SeriesRateFilterDataDto filter,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    int currentPage = 1;
    final List<SeriesDataDto> accumulatedSeries = [];

    while (accumulatedSeries.length < desiredCount) {
      final seriesResponse = await _fetchSeriesResponse(filter, currentPage);
      final filteredSeries = _filterSeries(seriesResponse.results, filter);

      if (filteredSeries.isEmpty) break;

      accumulatedSeries.addAll(filteredSeries);

      if (_isLastSeriesPage(seriesResponse)) break;

      currentPage++;
    }

    return accumulatedSeries.length > desiredCount
        ? accumulatedSeries.sublist(0, desiredCount)
        : accumulatedSeries;
  }

  Future<SeriesResponseDataDto> _fetchSeriesResponse(
    SeriesRateFilterDataDto filter,
    int page,
  ) async {
    final queryParams = _buildSeriesQueryParams(filter, page);

    final result = await _mediaApiClient.get(
      '/discover/tv',
      queryParameters: queryParams,
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Map<String, dynamic> _buildSeriesQueryParams(
    SeriesRateFilterDataDto filter,
    int page,
  ) {
    final params = {
      'sort_by': 'popularity.desc',
      'vote_average.gte': '${DbConstants.minTargetTmdbRate}',
      'vote_count.gte': '100',
      'page': page,
    };

    final targetGenres = filter.targetGenres;

    if (targetGenres.isNotNullAndNotEmpty) {
      final genreIds = targetGenres!
          .map((genre) => genre.toValue().toString())
          .join('|');

      params['with_genres'] = genreIds;
    }

    return params;
  }

  List<SeriesDataDto> _filterSeries(
    List<SeriesDataDto>? series,
    SeriesRateFilterDataDto filter,
  ) {
    final excludeIds = filter.excludeIds ?? [];
    final processedSeries = series ?? [];

    return processedSeries.where((series) {
      return !excludeIds.contains(series.id);
    }).toList();
  }

  bool _isLastSeriesPage(SeriesResponseDataDto response) {
    return response.page != null &&
        response.totalPages != null &&
        response.page == response.totalPages;
  }

  Future<SeriesResponseDataDto> getAiringTodaySeries({
    required int page,
  }) async {
    final result = await _mediaApiClient.get(
      '/tv/airing_today',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/on_the_air',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getTopRatedSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/top_rated',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Future<SeriesResponseDataDto> getPopularSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/popular',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(result);
  }
}

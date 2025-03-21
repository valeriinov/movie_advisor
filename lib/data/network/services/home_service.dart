import '../../../common/constants/db_constants.dart';
import '../../dto/country_dto.dart';
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
    final suggestions = await _gatherSuggestedMovies(filter);

    return MoviesResponseDataDto(results: suggestions);
  }

  Future<List<MovieDataDto>> _gatherSuggestedMovies(
    MovieRateFilterDataDto filter, [
    List<MovieDataDto>? existingMovies,
  ]) async {
    const int desiredCount = DbConstants.pageSize;
    int currentPage = 1;
    final List<MovieDataDto> accumulatedMovies = existingMovies ?? [];

    while (accumulatedMovies.length < desiredCount) {
      final moviesResponse = await _fetchMoviesResponse(
        filter,
        currentPage,
        useCountryFilter: existingMovies == null,
      );

      final filteredMovies = _filterMovies(moviesResponse.results, filter);

      if (filteredMovies.isEmpty) break;

      accumulatedMovies.addAll(filteredMovies);

      if (_isLastMoviesPage(moviesResponse)) break;

      currentPage++;
    }

    if (_shouldRelaxMoviesCountryFilter(accumulatedMovies, existingMovies)) {
      return _gatherSuggestedMovies(filter, accumulatedMovies);
    }

    return accumulatedMovies.length > desiredCount
        ? accumulatedMovies.sublist(0, desiredCount)
        : accumulatedMovies;
  }

  bool _shouldRelaxMoviesCountryFilter(
    List<MovieDataDto> accumulatedMovies,
    List<MovieDataDto>? existingMovies,
  ) {
    return accumulatedMovies.length < DbConstants.pageSize &&
        existingMovies == null;
  }

  Future<MoviesResponseDataDto> _fetchMoviesResponse(
    MovieRateFilterDataDto filter,
    int page, {
    bool useCountryFilter = true,
  }) async {
    final genreFilter = _buildMoviesGenreIdsStr(filter.targetGenres);

    final countryFilter =
        useCountryFilter
            ? _buildCountryFilterString(filter.targetCountries)
            : '';

    final queryParams = _buildQueryParams(genreFilter, countryFilter, page);

    final result = await _mediaApiClient.get(
      '/discover/movie',
      queryParameters: queryParams,
    );

    return _responseHandler.handleMoviesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  String _buildMoviesGenreIdsStr(List<MovieGenreDto>? targetGenres) {
    return targetGenres?.map((genre) => genre.toValue().toString()).join('|') ??
        '';
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

    return _responseHandler.handleMoviesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<MoviesResponseDataDto> getUpcomingMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/upcoming',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<MoviesResponseDataDto> getTopRatedMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/top_rated',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<MoviesResponseDataDto> getPopularMovies({required int page}) async {
    final result = await _mediaApiClient.get(
      '/movie/popular',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleMoviesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<SeriesResponseDataDto> getSuggestedSeries(
    SeriesRateFilterDataDto filter,
  ) async {
    final suggestions = await _gatherSuggestedSeries(filter);

    return SeriesResponseDataDto(results: suggestions);
  }

  Future<List<SeriesDataDto>> _gatherSuggestedSeries(
    SeriesRateFilterDataDto filter, [
    List<SeriesDataDto>? existingSeries,
  ]) async {
    const int desiredCount = DbConstants.pageSize;
    int currentPage = 1;
    final List<SeriesDataDto> accumulatedSeries = existingSeries ?? [];

    while (accumulatedSeries.length < desiredCount) {
      final seriesResponse = await _fetchSeriesResponse(
        filter,
        currentPage,
        useCountryFilter: existingSeries == null,
      );

      final filteredSeries = _filterSeries(seriesResponse.results, filter);

      if (filteredSeries.isEmpty) break;

      accumulatedSeries.addAll(filteredSeries);

      if (_isLastSeriesPage(seriesResponse)) break;

      currentPage++;
    }

    if (_shouldRelaxSeriesCountryFilter(accumulatedSeries, existingSeries)) {
      return _gatherSuggestedSeries(filter, accumulatedSeries);
    }

    return accumulatedSeries.length > desiredCount
        ? accumulatedSeries.sublist(0, desiredCount)
        : accumulatedSeries;
  }

  bool _shouldRelaxSeriesCountryFilter(
    List<SeriesDataDto> accumulatedSeries,
    List<SeriesDataDto>? existingSeries,
  ) {
    return accumulatedSeries.length < DbConstants.pageSize &&
        existingSeries == null;
  }

  Future<SeriesResponseDataDto> _fetchSeriesResponse(
    SeriesRateFilterDataDto filter,
    int page, {
    bool useCountryFilter = true,
  }) async {
    final genreFilter = _buildSeriesGenresFilterString(filter.targetGenres);

    final countryFilter =
        useCountryFilter
            ? _buildCountryFilterString(filter.targetCountries)
            : '';

    final queryParams = _buildQueryParams(genreFilter, countryFilter, page);

    final result = await _mediaApiClient.get(
      '/discover/tv',
      queryParameters: queryParams,
    );

    return _responseHandler.handleSeriesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  String _buildSeriesGenresFilterString(List<SeriesGenreDto>? targetGenres) {
    return targetGenres?.map((genre) => genre.toValue().toString()).join('|') ??
        '';
  }

  String _buildCountryFilterString(List<CountryDto>? targetCountries) {
    return targetCountries?.map((e) => e.toValue()).join('|') ?? '';
  }

  Map<String, dynamic> _buildQueryParams(
    String genreIdsStr,
    String countryIdsStr,
    int page,
  ) {
    final params = {
      'sort_by': 'popularity.desc',
      'vote_average.gte': '${DbConstants.minTargetTmdbRate}',
      'vote_count.gte': '${DbConstants.minTmdbVoteCount}',
      'page': page,
    };

    if (genreIdsStr.isNotEmpty) {
      params['with_genres'] = genreIdsStr;
    }

    if (countryIdsStr.isNotEmpty) {
      params['with_origin_country'] = countryIdsStr;
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

    return _responseHandler.handleSeriesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<SeriesResponseDataDto> getOnTheAirSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/on_the_air',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<SeriesResponseDataDto> getTopRatedSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/top_rated',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(
      result,
      removeWithoutPoster: true,
    );
  }

  Future<SeriesResponseDataDto> getPopularSeries({required int page}) async {
    final result = await _mediaApiClient.get(
      '/tv/popular',
      queryParameters: {'page': page},
    );

    return _responseHandler.handleSeriesResponse(
      result,
      removeWithoutPoster: true,
    );
  }
}

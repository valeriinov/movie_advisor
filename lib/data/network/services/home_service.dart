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
import '../utils/media_discoverer/media_discoverer.dart';
import '../utils/media_response_handler/media_response_handler.dart';

class HomeService {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;
  final MediaDiscoverer _mediaDiscoverer;

  HomeService({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
    required MediaDiscoverer mediaDiscoverer,
  }) : _mediaApiClient = mediaApiClient,
       _responseHandler = responseHandler,
       _mediaDiscoverer = mediaDiscoverer;

  Future<MoviesResponseDataDto> getSuggestedMovies(
    MovieRateFilterDataDto filter,
  ) async {
    final suggestions = await _gatherSuggestedMovies(filter);

    return MoviesResponseDataDto(results: suggestions);
  }

  Future<List<MovieDataDto>> _gatherSuggestedMovies(
    MovieRateFilterDataDto filter,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    const page = 1;

    List<int> excludeIds = filter.excludeIds ?? [];

    final initial = await _fetchSuggestedMovies(
      filter,
      page,
      excludeIds,
      useCountry: true,
    );

    if (!_shouldRelaxCountryFilter(initial, desiredCount)) {
      return _trimResults(initial, desiredCount);
    }

    excludeIds =
        {...excludeIds, ...initial.map((m) => m.id).whereType<int>()}.toList();

    final relaxed = await _fetchSuggestedMovies(
      filter,
      page,
      excludeIds,
      useCountry: false,
    );

    return _trimResults([...initial, ...relaxed], desiredCount);
  }

  Future<List<MovieDataDto>> _fetchSuggestedMovies(
    MovieRateFilterDataDto filter,
    int page,
    List<int> excludeIds, {
    required bool useCountry,
  }) async {
    final params = _createMovieQueryParams(
      filter,
      page,
      useCountryFilter: useCountry,
    );

    final dto = await _mediaDiscoverer.discoverMovies(page, excludeIds, params);

    return dto.results ?? [];
  }

  Map<String, dynamic> _createMovieQueryParams(
    MovieRateFilterDataDto filter,
    int page, {
    bool useCountryFilter = true,
  }) {
    final genreFilter = _buildMoviesGenreIdsStr(filter.targetGenres);

    final countryFilter =
        useCountryFilter
            ? _buildCountryFilterString(filter.targetCountries)
            : '';

    return _buildQueryParams(genreFilter, countryFilter, page);
  }

  String _buildMoviesGenreIdsStr(List<MovieGenreDto>? targetGenres) {
    return targetGenres?.map((genre) => genre.toValue().toString()).join('|') ??
        '';
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
    SeriesRateFilterDataDto filter,
  ) async {
    const int desiredCount = DbConstants.pageSize;
    const page = 1;
    var excludeIds = filter.excludeIds ?? [];

    final initial = await _fetchSuggestedSeries(
      filter,
      page,
      excludeIds,
      useCountry: true,
    );

    if (!_shouldRelaxCountryFilter(initial, desiredCount)) {
      return _trimResults(initial, desiredCount);
    }

    excludeIds =
        {...excludeIds, ...initial.map((s) => s.id).whereType<int>()}.toList();

    final relaxed = await _fetchSuggestedSeries(
      filter,
      page,
      excludeIds,
      useCountry: false,
    );

    return _trimResults([...initial, ...relaxed], desiredCount);
  }

  Future<List<SeriesDataDto>> _fetchSuggestedSeries(
    SeriesRateFilterDataDto filter,
    int page,
    List<int> excludeIds, {
    required bool useCountry,
  }) async {
    final params = _createSeriesQueryParams(
      filter,
      page,
      useCountryFilter: useCountry,
    );
    final dto = await _mediaDiscoverer.discoverSeries(page, excludeIds, params);
    return dto.results ?? [];
  }

  Map<String, dynamic> _createSeriesQueryParams(
    SeriesRateFilterDataDto filter,
    int page, {
    bool useCountryFilter = true,
  }) {
    final genreFilter = _buildSeriesGenresFilterString(filter.targetGenres);

    final countryFilter =
        useCountryFilter
            ? _buildCountryFilterString(filter.targetCountries)
            : '';

    return _buildQueryParams(genreFilter, countryFilter, page);
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

  bool _shouldRelaxCountryFilter<T>(
    List<T> accumulatedResults,
    int desiredCount,
  ) {
    return accumulatedResults.length < desiredCount;
  }

  List<T> _trimResults<T>(List<T> results, int desiredCount) {
    return results.length > desiredCount
        ? results.sublist(0, desiredCount)
        : results;
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

import 'package:flutter_utils/ext/dart_ext/iterable/empty_iterable_handler.dart';

import '../../dto/filter/country_dto.dart';
import '../../dto/filter/movies_filter_data_dto.dart';
import '../../dto/filter/series_filter_data_dto.dart';
import '../../dto/filter/sort_by_dto.dart';
import '../../dto/movie/movie_genre_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_genre_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/media_response_handler/media_response_handler.dart';

class FilterService {
  final NetworkManager _mediaApiClient;
  final MediaResponseHandler _responseHandler;

  FilterService({
    required NetworkManager mediaApiClient,
    required MediaResponseHandler responseHandler,
  }) : _mediaApiClient = mediaApiClient,
       _responseHandler = responseHandler;

  Future<MoviesResponseDataDto> filterMovies(
    MoviesFilterDataDto filter, {
    required int page,
  }) async {
    final queryParameters = _buildMoviesQueryParameters(filter, page);

    final result = await _mediaApiClient.get(
      '/discover/movie',
      queryParameters: queryParameters,
    );

    return _responseHandler.handleMoviesResponse(result);
  }

  Map<String, dynamic> _buildMoviesQueryParameters(
    MoviesFilterDataDto filter,
    int page,
  ) {
    final params = <String, dynamic>{'page': page};

    if (filter.year != null) params['year'] = filter.year;
    if (filter.sortBy != null) params['sort_by'] = filter.sortBy!.toValue();

    if (filter.withCountries.isNotNullAndNotEmpty) {
      params['with_origin_country'] = _serializeCountries(
        filter.withCountries!,
      );
    }

    if (filter.withGenres.isNotNullAndNotEmpty) {
      params['with_genres'] = _serializeMovieGenres(filter.withGenres!);
    }
    if (filter.withoutGenres.isNotNullAndNotEmpty) {
      params['without_genres'] = _serializeMovieGenres(filter.withoutGenres!);
    }

    return params;
  }

  String _serializeMovieGenres(List<MovieGenreDto> genres) {
    return genres.map((e) => e.toValue()).join('|');
  }

  Future<SeriesResponseDataDto> filterSeries(
    SeriesFilterDataDto filter, {
    required int page,
  }) async {
    final queryParameters = _buildSeriesQueryParameters(filter, page);

    final result = await _mediaApiClient.get(
      '/discover/tv',
      queryParameters: queryParameters,
    );

    return _responseHandler.handleSeriesResponse(result);
  }

  Map<String, dynamic> _buildSeriesQueryParameters(
    SeriesFilterDataDto filter,
    int page,
  ) {
    final params = <String, dynamic>{'page': page};

    if (filter.year != null) params['year'] = filter.year;
    if (filter.sortBy != null) params['sort_by'] = filter.sortBy!.toValue();

    if (filter.withCountries.isNotNullAndNotEmpty) {
      params['with_origin_country'] = _serializeCountries(
        filter.withCountries!,
      );
    }

    if (filter.withGenres.isNotNullAndNotEmpty) {
      params['with_genres'] = _serializeSeriesGenres(filter.withGenres!);
    }
    if (filter.withoutGenres.isNotNullAndNotEmpty) {
      params['without_genres'] = _serializeSeriesGenres(filter.withoutGenres!);
    }

    return params;
  }

  String _serializeSeriesGenres(List<SeriesGenreDto> genres) {
    return genres.map((e) => e.toValue()).join('|');
  }

  String _serializeCountries(List<CountryDto> countries) {
    return countries.map((e) => e.toValue()).join('|');
  }
}

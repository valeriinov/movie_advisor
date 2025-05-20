import 'package:flutter_utils/ext/dart_ext/iterable/empty_iterable_handler.dart';

import '../../../common/constants/filter_constants.dart';
import '../../dto/country_dto.dart';
import '../../dto/filter/movies_filter_data_dto.dart';
import '../../dto/filter/series_filter_data_dto.dart';
import '../../dto/filter/sort_by_dto.dart';
import '../../dto/movie/movie_genre_dto.dart';
import '../../dto/movie/movies_response_data_dto.dart';
import '../../dto/series/series_genre_dto.dart';
import '../../dto/series/series_response_data_dto.dart';
import '../utils/media_discoverer/media_discoverer.dart';

class FilterService {
  final MediaDiscoverer _mediaDiscoverer;

  FilterService({required MediaDiscoverer mediaDiscoverer})
    : _mediaDiscoverer = mediaDiscoverer;

  Future<MoviesResponseDataDto> filterMovies(
    MoviesFilterDataDto filter, {
    List<int> excludeIds = const [],
    required int page,
  }) async {
    final queryParameters = _buildMoviesQueryParameters(filter, page);

    return _mediaDiscoverer.discoverMovies(page, excludeIds, queryParameters);
  }

  Map<String, dynamic> _buildMoviesQueryParameters(
    MoviesFilterDataDto filter,
    int page,
  ) {
    final params = <String, dynamic>{'page': page};

    if (filter.year != null) {
      params['primary_release_year'] = filter.year;
    }

    if (filter.sortBy != null) {
      params['sort_by'] = filter.sortBy!.toValue();
    }

    if (_isRatingSort(filter.sortBy)) {
      params['vote_count.gte'] = '${FilterConstants.minTmdbVoteCount}';
    }

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
    List<int> excludeIds = const [],
    required int page,
  }) async {
    final queryParameters = _buildSeriesQueryParameters(filter, page);

    return _mediaDiscoverer.discoverSeries(page, excludeIds, queryParameters);
  }

  Map<String, dynamic> _buildSeriesQueryParameters(
    SeriesFilterDataDto filter,
    int page,
  ) {
    final params = <String, dynamic>{'page': page};

    if (filter.year != null) {
      params['first_air_date_year'] = filter.year;
    }

    final sortBy = _createSeriesSortBy(filter.sortBy);

    if (sortBy != null) {
      params['sort_by'] = sortBy;
    }

    if (_isRatingSort(filter.sortBy)) {
      params['vote_count.gte'] = '${FilterConstants.minTmdbVoteCount}';
    }

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

  String? _createSeriesSortBy(SortByDto? sortBy) {
    return switch (sortBy) {
      SortByDto.releaseDateAsc => 'first_air_date.asc',
      SortByDto.releaseDateDesc => 'first_air_date.desc',
      SortByDto s? => s.toValue(),
      _ => null,
    };
  }

  bool _isRatingSort(SortByDto? sortBy) {
    return sortBy == SortByDto.voteAverageAsc ||
        sortBy == SortByDto.voteAverageDesc;
  }

  String _serializeSeriesGenres(List<SeriesGenreDto> genres) {
    return genres.map((e) => e.toValue()).join('|');
  }

  String _serializeCountries(List<CountryDto> countries) {
    return countries.map((e) => e.toValue()).join('|');
  }
}

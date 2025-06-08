import 'package:dart_mappable/dart_mappable.dart';

import '../country_dto.dart';
import '../movie/movie_genre_dto.dart';
import 'watched_sort_by_dto.dart';

part 'movies_watched_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesWatchedFilterDataDto with MoviesWatchedFilterDataDtoMappable {
  final WatchedSortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final bool? includeWatchlist;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;
  final DateTime? fromPremiereDate;
  final DateTime? toPremiereDate;
  final DateTime? fromWatchedDate;
  final DateTime? toWatchedDate;

  const MoviesWatchedFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.includeWatchlist,
    this.withGenres,
    this.withoutGenres,
    this.fromPremiereDate,
    this.toPremiereDate,
    this.fromWatchedDate,
    this.toWatchedDate,
  });

  factory MoviesWatchedFilterDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesWatchedFilterDataDtoMapper.fromJson(json);
}

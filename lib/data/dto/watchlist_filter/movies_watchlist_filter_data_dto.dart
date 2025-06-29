import 'package:dart_mappable/dart_mappable.dart';

import '../country_dto.dart';
import '../movie/movie_genre_dto.dart';
import 'watchlist_sort_by_dto.dart';

part 'movies_watchlist_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesWatchlistFilterDataDto with MoviesWatchlistFilterDataDtoMappable {
  final WatchlistSortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final bool? includeWatched;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;
  final DateTime? fromPremiereDate;
  final DateTime? toPremiereDate;
  final DateTime? fromAddedDate;
  final DateTime? toAddedDate;

  const MoviesWatchlistFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.includeWatched,
    this.withGenres,
    this.withoutGenres,
    this.fromPremiereDate,
    this.toPremiereDate,
    this.fromAddedDate,
    this.toAddedDate,
  });

  factory MoviesWatchlistFilterDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesWatchlistFilterDataDtoMapper.fromJson(json);
}

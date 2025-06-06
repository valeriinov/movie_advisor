import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../country_dto.dart';
import '../movie/movie_genre_dto.dart';
import 'sort_by_dto.dart';

part 'movies_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesFilterDataDto with MoviesFilterDataDtoMappable {
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;
  final bool? includeWatched;
  final bool? includeWatchlist;
  @MappableField(hook: DateMapperHook())
  final DateTime? fromDate;
  @MappableField(hook: DateMapperHook())
  final DateTime? toDate;

  const MoviesFilterDataDto({
    this.sortBy,
    this.withCountries,
    this.withGenres,
    this.withoutGenres,
    this.includeWatched,
    this.includeWatchlist,
    this.fromDate,
    this.toDate,
  });

  factory MoviesFilterDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesFilterDataDtoMapper.fromJson(json);
}

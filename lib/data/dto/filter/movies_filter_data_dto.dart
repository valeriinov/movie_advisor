import 'package:dart_mappable/dart_mappable.dart';

import '../movie/movie_genre_dto.dart';
import 'country_dto.dart';
import 'sort_by_dto.dart';

part 'movies_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MoviesFilterDataDto with MoviesFilterDataDtoMappable {
  final int? year;
  final SortByDto? sortBy;
  final List<CountryDto>? withCountries;
  final List<CountryDto>? withoutCountries;
  final List<MovieGenreDto>? withGenres;
  final List<MovieGenreDto>? withoutGenres;

  const MoviesFilterDataDto({
    this.year,
    this.sortBy,
    this.withCountries,
    this.withoutCountries,
    this.withGenres,
    this.withoutGenres,
});

  factory MoviesFilterDataDto.fromJson(Map<String, dynamic> json) =>
      MoviesFilterDataDtoMapper.fromJson(json);
}

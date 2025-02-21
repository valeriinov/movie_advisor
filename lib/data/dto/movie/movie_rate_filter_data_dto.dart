import 'package:dart_mappable/dart_mappable.dart';

import 'movie_genre_dto.dart';

part 'movie_rate_filter_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MovieRateFilterDataDto with MovieRateFilterDataDtoMappable {
  final List<int>? excludeIds;
  final List<MovieGenreDto>? targetGenres;

  const MovieRateFilterDataDto({this.excludeIds, this.targetGenres});

  factory MovieRateFilterDataDto.fromJson(Map<String, dynamic> json) =>
      MovieRateFilterDataDtoMapper.fromJson(json);
}

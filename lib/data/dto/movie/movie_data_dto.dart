import 'package:dart_mappable/dart_mappable.dart';

import 'movie_genre_dto.dart';

part 'movie_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MovieDataDto with MovieDataDtoMappable {
  final int? id;
  final String? backdropPath;
  @MappableField(key: 'genre_ids')
  final List<MovieGenreDto>? genres;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? title;
  final double? voteAverage;
  final int? voteCount;

  const MovieDataDto({
    this.id,
    this.backdropPath,
    this.genres,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
});

  factory MovieDataDto.fromJson(Map<String, dynamic> json) =>
      MovieDataDtoMapper.fromJson(json);
}

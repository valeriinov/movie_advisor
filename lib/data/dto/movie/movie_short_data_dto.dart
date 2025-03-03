import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../rating/rating_data_dto.dart';
import 'movie_genre_dto.dart';

part 'movie_short_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MovieShortDataDto with MovieShortDataDtoMappable {
  final int? id;
  final String? posterUrl;
  final List<MovieGenreDto>? genres;
  final List<String>? originCountry;
  @MappableField(hook: DateMapperHook())
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  @MappableField(hook: DateMapperHook())
  final DateTime? updatedAt;

  const MovieShortDataDto({
    this.id,
    this.posterUrl,
    this.genres,
    this.originCountry,
    this.premiereDate,
    this.title,
    this.tmdbRating,
    this.userRating,
    this.isInWatchlist,
    this.isWatched,
    this.updatedAt,
  });

  factory MovieShortDataDto.fromJson(Map<String, dynamic> json) =>
      MovieShortDataDtoMapper.fromJson(json);
}

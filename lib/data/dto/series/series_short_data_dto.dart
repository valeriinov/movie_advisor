import 'package:dart_mappable/dart_mappable.dart';

import '../rating/rating_data_dto.dart';
import 'series_genre_dto.dart';

part 'series_short_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesShortDataDto with SeriesShortDataDtoMappable {
  final int? id;
  final String? posterUrl;
  final List<SeriesGenreDto>? genres;
  final List<String>? originCountry;
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  final DateTime? updatedAt;

  const SeriesShortDataDto({
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

  factory SeriesShortDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesShortDataDtoMapper.fromJson(json);
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../country_dto.dart';
import '../localized_string.dart';
import '../rating/rating_data_dto.dart';
import 'series_genre_dto.dart';

part 'series_short_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesShortDataDto with SeriesShortDataDtoMappable {
  final int? id;
  final String? posterUrl;
  final List<SeriesGenreDto>? genres;
  final List<CountryDto>? originCountry;
  @MappableField(hook: DateMapperHook())
  final DateTime? premiereDate;
  final String? title;
  final RatingDataDto? tmdbRating;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  @MappableField(hook: DateMapperHook())
  final DateTime? updatedAt;
  final LocalizedString? localizedTitle;
  final LocalizedString? localizedPosterUrl;
  @MappableField(hook: DateMapperHook())
  final DateTime? watchlistAddedAt;
  @MappableField(hook: DateMapperHook())
  final DateTime? lastWatchedAt;

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
    this.localizedTitle,
    this.localizedPosterUrl,
    this.watchlistAddedAt,
    this.lastWatchedAt,
  });

  factory SeriesShortDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesShortDataDtoMapper.fromJson(json);
}

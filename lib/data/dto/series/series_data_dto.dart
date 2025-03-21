import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../../utils/genres_hook.dart';
import '../credits/credits_data_dto.dart';
import '../country_dto.dart';
import '../video/videos_data_dto.dart';
import 'series_genre_dto.dart';

part 'series_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesDataDto with SeriesDataDtoMappable {
  final int? id;
  final String? backdropPath;
  @MappableField(key: 'genre_ids')
  final List<SeriesGenreDto>? genres;
  @MappableField(key: 'genres', hook: SeriesGenreHook())
  final List<SeriesGenreDto>? genresAlt;
  final List<CountryDto>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  @MappableField(hook: DateMapperHook())
  final DateTime? firstAirDate;
  final String? name;
  final double? voteAverage;
  final int? voteCount;
  final CreditsDataDto? credits;
  final VideosDataDto? videos;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;

  const SeriesDataDto({
    this.id,
    this.backdropPath,
    this.genres,
    this.genresAlt,
    this.originCountry,
    this.originalLanguage,
    this.originalName,
    this.overview,
    this.popularity,
    this.posterPath,
    this.firstAirDate,
    this.name,
    this.voteAverage,
    this.voteCount,
    this.credits,
    this.videos,
    this.userRating,
    this.isInWatchlist,
    this.isWatched,
  });

  factory SeriesDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesDataDtoMapper.fromJson(json);
}

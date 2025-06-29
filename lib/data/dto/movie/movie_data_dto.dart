import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../../utils/genres_hook.dart';
import '../country_dto.dart';
import '../credits/credits_data_dto.dart';
import '../video/videos_data_dto.dart';
import 'movie_genre_dto.dart';

part 'movie_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MovieDataDto with MovieDataDtoMappable {
  final int? id;
  final String? backdropPath;
  @MappableField(key: 'genre_ids')
  final List<MovieGenreDto>? genres;
  @MappableField(key: 'genres', hook: MovieGenresHook())
  final List<MovieGenreDto>? genresAlt;
  final List<CountryDto>? originCountry;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  @MappableField(hook: DateMapperHook())
  final DateTime? releaseDate;
  final String? title;
  final double? voteAverage;
  final int? voteCount;
  final CreditsDataDto? credits;
  final VideosDataDto? videos;
  final int? revenue;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  @MappableField(hook: DateMapperHook())
  final DateTime? watchlistAddedAt;
  @MappableField(hook: DateMapperHook())
  final DateTime? lastWatchedAt;

  const MovieDataDto({
    this.id,
    this.backdropPath,
    this.genres,
    this.genresAlt,
    this.originCountry,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.voteAverage,
    this.voteCount,
    this.credits,
    this.videos,
    this.revenue,
    this.userRating,
    this.isInWatchlist,
    this.isWatched,
    this.watchlistAddedAt,
    this.lastWatchedAt,
  });

  factory MovieDataDto.fromJson(Map<String, dynamic> json) =>
      MovieDataDtoMapper.fromJson(json);
}

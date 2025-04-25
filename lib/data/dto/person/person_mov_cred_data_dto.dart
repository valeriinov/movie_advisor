import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../credits/crew_job_dto.dart';
import '../movie/movie_genre_dto.dart';

part 'person_mov_cred_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class PersonMovCredDataDto with PersonMovCredDataDtoMappable {
  final int? id;
  @MappableField(key: 'genre_ids')
  final List<MovieGenreDto>? genres;
  final String? posterPath;
  @MappableField(hook: DateMapperHook())
  final DateTime? releaseDate;
  final String? title;
  final double? popularity;
  final double? voteAverage;
  final int? voteCount;
  final int? userRating;
  final bool? isInWatchlist;
  final bool? isWatched;
  @MappableField(key: 'character')
  final String? actCharacter;
  @MappableField(key: 'job')
  final CrewJobDto? crewJob;

  const PersonMovCredDataDto({
    this.id,
    this.genres,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.popularity,
    this.voteAverage,
    this.voteCount,
    this.userRating,
    this.isInWatchlist,
    this.isWatched,
    this.actCharacter,
    this.crewJob,
  });

  factory PersonMovCredDataDto.fromJson(Map<String, dynamic> json) =>
      PersonMovCredDataDtoMapper.fromJson(json);
}

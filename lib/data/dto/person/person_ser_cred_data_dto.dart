import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../credits/crew_job_dto.dart';
import '../series/series_genre_dto.dart';

part 'person_ser_cred_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class PersonSerCredDataDto with PersonSerCredDataDtoMappable {
  final int? id;
  @MappableField(key: 'genre_ids')
  final List<SeriesGenreDto>? genres;
  final String? posterPath;
  @MappableField(hook: DateMapperHook(), key: 'first_air_date')
  final DateTime? releaseDate;
  @MappableField(key: 'name')
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

  const PersonSerCredDataDto({
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

  factory PersonSerCredDataDto.fromJson(Map<String, dynamic> json) =>
      PersonSerCredDataDtoMapper.fromJson(json);
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../watch_event_type_dto.dart';

part 'movie_watch_event_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class MovieWatchEventDataDto with MovieWatchEventDataDtoMappable {
  final int? id;
  final int? movieId;
  final WatchEventTypeDto? type;
  final int? userRating;
  @MappableField(hook: DateMapperHook())
  final DateTime? at;

  const MovieWatchEventDataDto({
    this.id,
    this.movieId,
    this.type,
    this.userRating,
    this.at,
  });

  factory MovieWatchEventDataDto.fromJson(Map<String, dynamic> json) =>
      MovieWatchEventDataDtoMapper.fromJson(json);
}

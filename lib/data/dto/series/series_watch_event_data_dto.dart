import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import '../watch_event_type_dto.dart';

part 'series_watch_event_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SeriesWatchEventDataDto with SeriesWatchEventDataDtoMappable {
  final int? id;
  final int? seriesId;
  final WatchEventTypeDto? type;
  @MappableField(hook: DateMapperHook())
  final DateTime? at;

  const SeriesWatchEventDataDto({this.id, this.seriesId, this.type, this.at});

  factory SeriesWatchEventDataDto.fromJson(Map<String, dynamic> json) =>
      SeriesWatchEventDataDtoMapper.fromJson(json);
}

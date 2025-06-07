import 'package:dart_mappable/dart_mappable.dart';

part 'watch_event_type_dto.mapper.dart';

@MappableEnum(
  mode: ValuesMode.indexed,
  caseStyle: CaseStyle.snakeCase,
  defaultValue: WatchEventTypeDto.none,
)
enum WatchEventTypeDto { watchlistAdd, watchlistRemove, watch, none }

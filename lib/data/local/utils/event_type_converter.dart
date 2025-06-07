import 'package:drift/drift.dart';

import '../../dto/watch_event_type_dto.dart';

final TypeConverter<WatchEventTypeDto, String> eventTypeConverter =
    EnumNameConverter(WatchEventTypeDto.values);

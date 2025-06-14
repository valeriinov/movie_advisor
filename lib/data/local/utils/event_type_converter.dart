import 'package:drift/drift.dart';

import '../../dto/watch_event_type_dto.dart';

final TypeConverter<WatchEventTypeDto, String> eventTypeConverter =
    TypeConverter.json2(
      fromJson: (val) => WatchEventTypeDtoMapper.fromValue(val),
      toJson: (val) => val.toValue(),
    );

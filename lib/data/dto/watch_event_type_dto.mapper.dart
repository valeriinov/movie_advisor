// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watch_event_type_dto.dart';

class WatchEventTypeDtoMapper extends EnumMapper<WatchEventTypeDto> {
  WatchEventTypeDtoMapper._();

  static WatchEventTypeDtoMapper? _instance;
  static WatchEventTypeDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchEventTypeDtoMapper._());
    }
    return _instance!;
  }

  static WatchEventTypeDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WatchEventTypeDto decode(dynamic value) {
    switch (value) {
      case 0:
        return WatchEventTypeDto.watchlistAdd;
      case 1:
        return WatchEventTypeDto.watchlistRemove;
      case 2:
        return WatchEventTypeDto.watch;
      case 3:
        return WatchEventTypeDto.none;
      default:
        return WatchEventTypeDto.values[3];
    }
  }

  @override
  dynamic encode(WatchEventTypeDto self) {
    switch (self) {
      case WatchEventTypeDto.watchlistAdd:
        return 0;
      case WatchEventTypeDto.watchlistRemove:
        return 1;
      case WatchEventTypeDto.watch:
        return 2;
      case WatchEventTypeDto.none:
        return 3;
    }
  }
}

extension WatchEventTypeDtoMapperExtension on WatchEventTypeDto {
  dynamic toValue() {
    WatchEventTypeDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<WatchEventTypeDto>(this);
  }
}

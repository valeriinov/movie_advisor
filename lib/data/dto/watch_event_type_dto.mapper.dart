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
      case r'watchlist_add':
        return WatchEventTypeDto.watchlistAdd;
      case r'watchlist_remove':
        return WatchEventTypeDto.watchlistRemove;
      case r'watch':
        return WatchEventTypeDto.watch;
      case r'none':
        return WatchEventTypeDto.none;
      default:
        return WatchEventTypeDto.values[3];
    }
  }

  @override
  dynamic encode(WatchEventTypeDto self) {
    switch (self) {
      case WatchEventTypeDto.watchlistAdd:
        return r'watchlist_add';
      case WatchEventTypeDto.watchlistRemove:
        return r'watchlist_remove';
      case WatchEventTypeDto.watch:
        return r'watch';
      case WatchEventTypeDto.none:
        return r'none';
    }
  }
}

extension WatchEventTypeDtoMapperExtension on WatchEventTypeDto {
  String toValue() {
    WatchEventTypeDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<WatchEventTypeDto>(this) as String;
  }
}

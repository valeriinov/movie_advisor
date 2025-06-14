// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watched_sort_by_dto.dart';

class WatchedSortByDtoMapper extends EnumMapper<WatchedSortByDto> {
  WatchedSortByDtoMapper._();

  static WatchedSortByDtoMapper? _instance;
  static WatchedSortByDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchedSortByDtoMapper._());
    }
    return _instance!;
  }

  static WatchedSortByDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WatchedSortByDto decode(dynamic value) {
    switch (value) {
      case r'watched_date_asc':
        return WatchedSortByDto.watchedDateAsc;
      case r'watched_date_desc':
        return WatchedSortByDto.watchedDateDesc;
      case r'premiere_date_asc':
        return WatchedSortByDto.premiereDateAsc;
      case r'premiere_date_desc':
        return WatchedSortByDto.premiereDateDesc;
      case r'tmdb_rate_asc':
        return WatchedSortByDto.tmdbRateAsc;
      case r'tmdb_rate_desc':
        return WatchedSortByDto.tmdbRateDesc;
      case r'user_rate_asc':
        return WatchedSortByDto.userRateAsc;
      case r'user_rate_desc':
        return WatchedSortByDto.userRateDesc;
      default:
        return WatchedSortByDto.values[1];
    }
  }

  @override
  dynamic encode(WatchedSortByDto self) {
    switch (self) {
      case WatchedSortByDto.watchedDateAsc:
        return r'watched_date_asc';
      case WatchedSortByDto.watchedDateDesc:
        return r'watched_date_desc';
      case WatchedSortByDto.premiereDateAsc:
        return r'premiere_date_asc';
      case WatchedSortByDto.premiereDateDesc:
        return r'premiere_date_desc';
      case WatchedSortByDto.tmdbRateAsc:
        return r'tmdb_rate_asc';
      case WatchedSortByDto.tmdbRateDesc:
        return r'tmdb_rate_desc';
      case WatchedSortByDto.userRateAsc:
        return r'user_rate_asc';
      case WatchedSortByDto.userRateDesc:
        return r'user_rate_desc';
    }
  }
}

extension WatchedSortByDtoMapperExtension on WatchedSortByDto {
  String toValue() {
    WatchedSortByDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<WatchedSortByDto>(this) as String;
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'watchlist_sort_by_dto.dart';

class WatchlistSortByDtoMapper extends EnumMapper<WatchlistSortByDto> {
  WatchlistSortByDtoMapper._();

  static WatchlistSortByDtoMapper? _instance;
  static WatchlistSortByDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WatchlistSortByDtoMapper._());
    }
    return _instance!;
  }

  static WatchlistSortByDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WatchlistSortByDto decode(dynamic value) {
    switch (value) {
      case r'added_date_asc':
        return WatchlistSortByDto.addedDateAsc;
      case r'added_date_desc':
        return WatchlistSortByDto.addedDateDesc;
      case r'premiere_date_asc':
        return WatchlistSortByDto.premiereDateAsc;
      case r'premiere_date_desc':
        return WatchlistSortByDto.premiereDateDesc;
      case r'tmdb_rate_asc':
        return WatchlistSortByDto.tmdbRateAsc;
      case r'tmdb_rate_desc':
        return WatchlistSortByDto.tmdbRateDesc;
      default:
        return WatchlistSortByDto.values[0];
    }
  }

  @override
  dynamic encode(WatchlistSortByDto self) {
    switch (self) {
      case WatchlistSortByDto.addedDateAsc:
        return r'added_date_asc';
      case WatchlistSortByDto.addedDateDesc:
        return r'added_date_desc';
      case WatchlistSortByDto.premiereDateAsc:
        return r'premiere_date_asc';
      case WatchlistSortByDto.premiereDateDesc:
        return r'premiere_date_desc';
      case WatchlistSortByDto.tmdbRateAsc:
        return r'tmdb_rate_asc';
      case WatchlistSortByDto.tmdbRateDesc:
        return r'tmdb_rate_desc';
    }
  }
}

extension WatchlistSortByDtoMapperExtension on WatchlistSortByDto {
  String toValue() {
    WatchlistSortByDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<WatchlistSortByDto>(this) as String;
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'sort_by_dto.dart';

class SortByDtoMapper extends EnumMapper<SortByDto> {
  SortByDtoMapper._();

  static SortByDtoMapper? _instance;
  static SortByDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SortByDtoMapper._());
    }
    return _instance!;
  }

  static SortByDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SortByDto decode(dynamic value) {
    switch (value) {
      case 'popularity.asc':
        return SortByDto.popularityAsc;
      case 'popularity.desc':
        return SortByDto.popularityDesc;
      case 'primary_release_date.asc':
        return SortByDto.releaseDateAsc;
      case 'primary_release_date.desc':
        return SortByDto.releaseDateDesc;
      case 'revenue.asc':
        return SortByDto.revenueAsc;
      case 'revenue.desc':
        return SortByDto.revenueDesc;
      case 'vote_average.asc':
        return SortByDto.voteAverageAsc;
      case 'vote_average.desc':
        return SortByDto.voteAverageDesc;
      default:
        return SortByDto.values[1];
    }
  }

  @override
  dynamic encode(SortByDto self) {
    switch (self) {
      case SortByDto.popularityAsc:
        return 'popularity.asc';
      case SortByDto.popularityDesc:
        return 'popularity.desc';
      case SortByDto.releaseDateAsc:
        return 'primary_release_date.asc';
      case SortByDto.releaseDateDesc:
        return 'primary_release_date.desc';
      case SortByDto.revenueAsc:
        return 'revenue.asc';
      case SortByDto.revenueDesc:
        return 'revenue.desc';
      case SortByDto.voteAverageAsc:
        return 'vote_average.asc';
      case SortByDto.voteAverageDesc:
        return 'vote_average.desc';
    }
  }
}

extension SortByDtoMapperExtension on SortByDto {
  dynamic toValue() {
    SortByDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SortByDto>(this);
  }
}

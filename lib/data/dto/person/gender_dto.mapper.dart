// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'gender_dto.dart';

class GenderDtoMapper extends EnumMapper<GenderDto> {
  GenderDtoMapper._();

  static GenderDtoMapper? _instance;
  static GenderDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GenderDtoMapper._());
    }
    return _instance!;
  }

  static GenderDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  GenderDto decode(dynamic value) {
    switch (value) {
      case 1:
        return GenderDto.female;
      case 2:
        return GenderDto.male;
      case -1:
        return GenderDto.none;
      default:
        return GenderDto.values[2];
    }
  }

  @override
  dynamic encode(GenderDto self) {
    switch (self) {
      case GenderDto.female:
        return 1;
      case GenderDto.male:
        return 2;
      case GenderDto.none:
        return -1;
    }
  }
}

extension GenderDtoMapperExtension on GenderDto {
  dynamic toValue() {
    GenderDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<GenderDto>(this);
  }
}

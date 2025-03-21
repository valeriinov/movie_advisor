// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'crew_job_dto.dart';

class CrewJobDtoMapper extends EnumMapper<CrewJobDto> {
  CrewJobDtoMapper._();

  static CrewJobDtoMapper? _instance;
  static CrewJobDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CrewJobDtoMapper._());
    }
    return _instance!;
  }

  static CrewJobDto fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  CrewJobDto decode(dynamic value) {
    switch (value) {
      case 'Director':
        return CrewJobDto.director;
      case 'Producer':
        return CrewJobDto.producer;
      case '':
        return CrewJobDto.unknown;
      default:
        return CrewJobDto.values[2];
    }
  }

  @override
  dynamic encode(CrewJobDto self) {
    switch (self) {
      case CrewJobDto.director:
        return 'Director';
      case CrewJobDto.producer:
        return 'Producer';
      case CrewJobDto.unknown:
        return '';
    }
  }
}

extension CrewJobDtoMapperExtension on CrewJobDto {
  dynamic toValue() {
    CrewJobDtoMapper.ensureInitialized();
    return MapperContainer.globals.toValue<CrewJobDto>(this);
  }
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import 'gender_dto.dart';

part 'person_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class PersonDataDto with PersonDataDtoMappable {
  final int? id;
  final String? name;
  final String? profilePath;
  final String? placeOfBirth;
  final GenderDto? gender;
  final String? biography;
  @MappableField(hook: DateMapperHook())
  final DateTime? birthday;
  @MappableField(hook: DateMapperHook())
  final DateTime? deathDay;

  const PersonDataDto({
    this.id,
    this.name,
    this.profilePath,
    this.placeOfBirth,
    this.gender,
    this.biography,
    required this.birthday,
    this.deathDay,
  });

  factory PersonDataDto.fromJson(Map<String, dynamic> json) =>
      PersonDataDtoMapper.fromJson(json);
}

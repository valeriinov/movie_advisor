import 'package:dart_mappable/dart_mappable.dart';

part 'person_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class PersonDataDto with PersonDataDtoMappable {
  final int? id;
  final String? name;
  final String? profilePath;
  final String? placeOfBirth;
  final String? biography;
  final DateTime? birthday;
  final DateTime? deathDay;

  const PersonDataDto({
    this.id,
    this.name,
    this.profilePath,
    this.placeOfBirth,
    this.biography,
    required this.birthday,
    this.deathDay,
  });

  factory PersonDataDto.fromJson(Map<String, dynamic> json) =>
      PersonDataDtoMapper.fromJson(json);
}

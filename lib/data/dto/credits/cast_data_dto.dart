import 'package:dart_mappable/dart_mappable.dart';

part 'cast_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class CastDataDto with CastDataDtoMappable {
  final int? id;
  final String? originalName;
  final String? profilePath;
  final String? name;
  final String? character;

  const CastDataDto({
    this.id,
    this.originalName,
    this.profilePath,
    this.name,
    this.character,
});

  factory CastDataDto.fromJson(Map<String, dynamic> json) =>
      CastDataDtoMapper.fromJson(json);
}

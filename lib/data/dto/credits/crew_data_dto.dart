import 'package:dart_mappable/dart_mappable.dart';

import 'crew_job_dto.dart';

part 'crew_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class CrewDataDto with CrewDataDtoMappable {
  final int? id;
  final String? originalName;
  final String? profilePath;
  final String? name;
  final CrewJobDto? job;

  const CrewDataDto({
    this.id,
    this.originalName,
    this.profilePath,
    this.name,
    this.job,
  });

  factory CrewDataDto.fromJson(Map<String, dynamic> json) =>
      CrewDataDtoMapper.fromJson(json);
}

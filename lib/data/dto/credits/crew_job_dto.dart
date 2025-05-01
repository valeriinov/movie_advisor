import 'package:dart_mappable/dart_mappable.dart';

part 'crew_job_dto.mapper.dart';

@MappableEnum(mode: ValuesMode.indexed, defaultValue: CrewJobDto.unknown)
enum CrewJobDto {
  @MappableValue('Director')
  director,
  @MappableValue('Producer')
  producer,
  @MappableValue('Executive Producer')
  executiveProducer,
  @MappableValue('Creator')
  creator,
  @MappableValue('')
  unknown,
}

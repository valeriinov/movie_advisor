import 'package:dart_mappable/dart_mappable.dart';

import 'cast_data_dto.dart';
import 'crew_data_dto.dart';

part 'credits_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class CreditsDataDto with CreditsDataDtoMappable {
  final List<CastDataDto>? cast;
  final List<CrewDataDto>? crew;

  const CreditsDataDto({this.cast, this.crew});

  factory CreditsDataDto.fromJson(Map<String, dynamic> json) =>
      CreditsDataDtoMapper.fromJson(json);
}

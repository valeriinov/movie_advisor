import 'package:dart_mappable/dart_mappable.dart';

import 'person_mov_cred_data_dto.dart';
import 'person_ser_cred_data_dto.dart';

part 'person_credits_data_dto.mapper.dart';

typedef PersonCreditsMovieDto = PersonCreditsDataDto<PersonMovCredDataDto>;
typedef PersonCreditsSeriesDto = PersonCreditsDataDto<PersonSerCredDataDto>;

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class PersonCreditsDataDto<T> with PersonCreditsDataDtoMappable<T> {
  final List<T>? cast;
  final List<T>? crew;

  const PersonCreditsDataDto({this.cast, this.crew});

  factory PersonCreditsDataDto.fromJson(Map<String, dynamic> json) =>
      PersonCreditsDataDtoMapper.fromJson(json);
}

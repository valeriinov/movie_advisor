import 'package:dart_mappable/dart_mappable.dart';

import '../../utils/date_mapper_hook.dart';
import 'gender_dto.dart';
import 'person_credits_data_dto.dart';
import 'person_mov_cred_data_dto.dart';
import 'person_ser_cred_data_dto.dart';

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
  @MappableField(key: 'deathday', hook: DateMapperHook())
  final DateTime? deathDay;
  final PersonCreditsMovieDto? movieCredits;
  @MappableField(key: 'tv_credits')
  final PersonCreditsSeriesDto? seriesCredits;

  const PersonDataDto({
    this.id,
    this.name,
    this.profilePath,
    this.placeOfBirth,
    this.gender,
    this.biography,
    this.birthday,
    this.deathDay,
    this.movieCredits,
    this.seriesCredits,
  });

  factory PersonDataDto.fromJson(Map<String, dynamic> json) =>
      PersonDataDtoMapper.fromJson(json);
}

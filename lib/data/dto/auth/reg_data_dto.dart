import 'package:dart_mappable/dart_mappable.dart';

part 'reg_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class RegDataDto with RegDataDtoMappable {
  final String? email;
  final String? password;

  const RegDataDto({this.email, this.password});

  factory RegDataDto.fromJson(Map<String, dynamic> json) =>
      RegDataDtoMapper.fromJson(json);
}

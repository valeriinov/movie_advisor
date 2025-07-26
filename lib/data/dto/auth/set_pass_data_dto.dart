import 'package:dart_mappable/dart_mappable.dart';

part 'set_pass_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class SetPassDataDto with SetPassDataDtoMappable {
  final String? oobCode;
  final String? password;

  const SetPassDataDto({this.oobCode, this.password});

  factory SetPassDataDto.fromJson(Map<String, dynamic> json) =>
      SetPassDataDtoMapper.fromJson(json);
}

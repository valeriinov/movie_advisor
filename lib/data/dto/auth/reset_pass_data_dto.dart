import 'package:dart_mappable/dart_mappable.dart';

part 'reset_pass_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class ResetPassDataDto with ResetPassDataDtoMappable {
  final String? email;

  const ResetPassDataDto({this.email});

  factory ResetPassDataDto.fromJson(Map<String, dynamic> json) =>
      ResetPassDataDtoMapper.fromJson(json);
}

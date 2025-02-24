import 'package:dart_mappable/dart_mappable.dart';

part 'auth_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class AuthDataDto with AuthDataDtoMappable {
  final String? login;
  final String? password;

  const AuthDataDto({
    this.login,
    this.password,
  });

  factory AuthDataDto.fromJson(Map<String, dynamic> json) =>
      AuthDataDtoMapper.fromJson(json);
}

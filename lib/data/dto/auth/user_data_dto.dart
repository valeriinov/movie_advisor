import 'package:dart_mappable/dart_mappable.dart';

part 'user_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class UserDataDto with UserDataDtoMappable {
  final String? id;
  final String? email;

  const UserDataDto({this.id, this.email});

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      UserDataDtoMapper.fromJson(json);
}

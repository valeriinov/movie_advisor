import 'package:dart_mappable/dart_mappable.dart';

part 'delete_account_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class DeleteAccountDataDto with DeleteAccountDataDtoMappable {
  final String? password;

  const DeleteAccountDataDto({this.password});

  factory DeleteAccountDataDto.fromJson(Map<String, dynamic> json) =>
      DeleteAccountDataDtoMapper.fromJson(json);
}

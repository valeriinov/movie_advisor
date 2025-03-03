import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'delete_account_data.mapper.dart';

@mappableEntity
class DeleteAccountData with DeleteAccountDataMappable {
  final String password;

  const DeleteAccountData({this.password = ''});
}

import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'set_pass_data.mapper.dart';

@mappableEntity
class SetPassData with SetPassDataMappable {
  final String oobCode;
  final String password;

  const SetPassData({this.oobCode = '', this.password = ''});
}

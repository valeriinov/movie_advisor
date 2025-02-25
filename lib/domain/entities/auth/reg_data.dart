import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'reg_data.mapper.dart';

@mappableEntity
class RegData with RegDataMappable {
  final String email;
  final String password;

  const RegData({this.email = '', this.password = ''});
}

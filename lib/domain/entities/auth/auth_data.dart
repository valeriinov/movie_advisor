import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'auth_data.mapper.dart';

@mappableEntity
class AuthData with AuthDataMappable {
  final String email;
  final String password;

  const AuthData({this.email = '', this.password = ''});
}

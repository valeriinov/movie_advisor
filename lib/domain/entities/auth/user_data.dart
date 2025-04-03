import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'user_data.mapper.dart';

@mappableEntity
class UserData with UserDataMappable {
  final String id;
  final String email;

  const UserData({this.id = '', this.email = ''});
}

import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'reset_pass_data.mapper.dart';

@mappableEntity
class ResetPassData with ResetPassDataMappable {
  final String email;

  const ResetPassData({this.email = ''});
}

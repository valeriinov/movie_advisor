import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'cast_data.mapper.dart';

@mappableEntity
class CastData with CastDataMappable {
  final int id;
  final String originalName;
  final String profilePath;
  final String name;
  final String character;

  const CastData({
    this.id = -1,
    this.originalName = '',
    this.profilePath = '',
    this.name = '',
    this.character = '',
  });
}

import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'person_data.mapper.dart';

@mappableEntity
class PersonData with PersonDataMappable {
  final int id;
  final String name;
  final String profilePath;
  final String placeOfBirth;
  final String biography;
  final DateTime birthday;
  final DateTime? deathDay;

  const PersonData({
    this.id = -1,
    this.name = '',
    this.profilePath = '',
    this.placeOfBirth = '',
    this.biography = '',
    required this.birthday,
    this.deathDay,
  });
}

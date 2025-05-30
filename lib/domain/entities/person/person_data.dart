import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import 'gender.dart';
import 'person_credits_data.dart';
import 'person_mov_cred_data.dart';
import 'person_ser_cred_data.dart';

part 'person_data.mapper.dart';

@mappableEntity
class PersonData with PersonDataMappable {
  final int id;
  final String name;
  final String profilePath;
  final String placeOfBirth;
  final Gender gender;
  final String biography;
  final DateTime? birthday;
  final DateTime? deathDay;
  final PersonCreditsMovie movieCredits;
  final PersonCreditsSeries seriesCredits;

  const PersonData({
    this.id = -1,
    this.name = '',
    this.profilePath = '',
    this.placeOfBirth = '',
    this.gender = Gender.none,
    this.biography = '',
    this.birthday,
    this.deathDay,
    this.movieCredits = const PersonCreditsMovie(),
    this.seriesCredits = const PersonCreditsSeries(),
  });
}

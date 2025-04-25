import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import 'person_mov_cred_data.dart';
import 'person_ser_cred_data.dart';

part 'person_credits_data.mapper.dart';

typedef PersonCreditsMovie = PersonCreditsData<PersonMovCredData>;
typedef PersonCreditsSeries = PersonCreditsData<PersonSerCredData>;

@mappableEntity
class PersonCreditsData<T> with PersonCreditsDataMappable<T> {
  final List<T> cast;
  final List<T> crew;

  const PersonCreditsData({this.cast = const [], this.crew = const []});
}

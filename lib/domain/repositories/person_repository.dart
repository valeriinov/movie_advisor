import '../entities/person/person_data.dart';
import '../entities/result.dart';

abstract interface class PersonRepository {
  Future<Result<PersonData>> getPerson(int id);
}

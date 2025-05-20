import '../entities/person/person_data.dart';
import '../entities/result.dart';
import '../repositories/person_repository.dart';

class PersonUseCase {
  final PersonRepository _repository;

  PersonUseCase({required PersonRepository repository})
    : _repository = repository;

  Future<Result<PersonData>> getPerson(int id) async {
    return await _repository.getPerson(id);
  }
}

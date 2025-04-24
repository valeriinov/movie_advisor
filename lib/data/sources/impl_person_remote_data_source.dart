import '../dto/person/person_data_dto.dart';
import '../network/services/person_service.dart';
import '../repositories/person/person_remote_data_source.dart';

class ImplPersonRemoteDataSource implements PersonRemoteDataSource {
  final PersonService _service;

  ImplPersonRemoteDataSource({required PersonService service}) : _service = service;

  @override
  Future<PersonDataDto> getPerson(int id) {
    return _service.getPerson();
  }
}

import '../../dto/person/person_data_dto.dart';

abstract interface class PersonRemoteDataSource {
  Future<PersonDataDto> getPerson(int id);
}

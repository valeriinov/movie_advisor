import '../../domain/entities/person/person_data.dart';
import '../dto/person/person_data_dto.dart';
import 'app_mapper.dart';

final class AppPersonMapper extends AppMapper {
  PersonData mapPersonDataDtoToDomain(PersonDataDto dto) {
    return PersonData(
      id: dto.id ?? -1,
      name: dto.name ?? '',
      profilePath: dto.profilePath ?? '',
      placeOfBirth: dto.placeOfBirth ?? '',
      biography: dto.biography ?? '',
      birthday: dto.birthday,
      deathDay: dto.deathDay,
    );
  }
}

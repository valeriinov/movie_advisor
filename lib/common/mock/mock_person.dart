import '../../domain/entities/person/gender.dart';
import '../../domain/entities/person/person_data.dart';
import '../../view/ui/resources/app_images.dart';

class MockPerson {
  static PersonData createPersonData() {
    return PersonData(
      id: 1,
      name: 'John Doe',
      profilePath: AppImages.placeholderImage,
      birthday: DateTime.now(),
      gender: Gender.male,
      biography:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et '
          'dolore magna aliqua. Ut enim ad minim veniam.',
      placeOfBirth: 'New York, USA',
    );
  }
}

import 'package:flutter_utils/flutter_utils.dart';

import '../../../common/app_locales.dart';
import '../../dto/person/person_data_dto.dart';
import '../../repositories/settings_provider.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class PersonService {
  final NetworkManager _localizedMediaApiClient;
  final NetworkManager _mediaApiClient;
  final SettingsProvider _settingsProvider;
  final ImageUrlHandler _imageUrlHandler;

  PersonService({
    required NetworkManager localizedMediaApiClient,
    required NetworkManager mediaApiClient,
    required SettingsProvider settingsProvider,
    required ImageUrlHandler imageUrlHandler,
  }) : _localizedMediaApiClient = localizedMediaApiClient,
       _mediaApiClient = mediaApiClient,
       _settingsProvider = settingsProvider,
       _imageUrlHandler = imageUrlHandler;

  Future<PersonDataDto> getPerson(int id) async {
    final result = await _localizedMediaApiClient.get(
      '/person/$id',
      queryParameters: _buildQueryParameters(),
    );

    PersonDataDto dto = PersonDataDto.fromJson(result.data);

    if (_shouldLoadEnBiography(dto)) {
      final enBiography = await _getPersonEnBiography(id);
      dto = dto.copyWith(biography: enBiography.biography);
    }

    return _imageUrlHandler.handlePersonImages(dto);
  }

  Future<PersonDataDto> _getPersonEnBiography(int id) async {
    final result = await _mediaApiClient.get(
      '/person/$id',
      queryParameters: {'language': AppLocales.en.name},
    );

    return PersonDataDto.fromJson(result.data);
  }

  bool _shouldLoadEnBiography(PersonDataDto data) {
    return _settingsProvider.currentLocale != AppLocales.en.name &&
        data.biography.isNullOrEmpty;
  }

  Map<String, dynamic> _buildQueryParameters() {
    return {'append_to_response': 'movie_credits,tv_credits'};
  }
}

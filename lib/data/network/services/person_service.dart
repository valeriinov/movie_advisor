import '../../dto/person/person_data_dto.dart';
import '../network_manager/network_manager.dart';
import '../utils/image_url_handler/image_url_handler.dart';

class PersonService {
  final NetworkManager _mediaApiClient;
  final ImageUrlHandler _imageUrlHandler;

  PersonService({
    required NetworkManager mediaApiClient,
    required ImageUrlHandler imageUrlHandler,
  }) : _mediaApiClient = mediaApiClient,
       _imageUrlHandler = imageUrlHandler;

  Future<PersonDataDto> getPerson(int id) async {
    final result = await _mediaApiClient.get(
      '/person/$id',
      queryParameters: _buildQueryParameters(),
    );

    PersonDataDto dto = PersonDataDto.fromJson(result.data);

    return _imageUrlHandler.handlePersonImages(dto);
  }

  Map<String, dynamic> _buildQueryParameters() {
    return {'append_to_response': 'movie_credits,tv_credits'};
  }
}

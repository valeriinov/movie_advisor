import 'package:flutter_utils/flutter_utils.dart';

import '../network_manager/network_manager.dart';

class HomeService {
  final NetworkManager _moviesApiClient;
  final NetworkManager _imagesApiClient;

  HomeService({
    required NetworkManager moviesApiClient,
    required NetworkManager imagesApiClient,
  })  : _moviesApiClient = moviesApiClient,
        _imagesApiClient = imagesApiClient;

  Future<void> getMovies() async {
    final result = await _moviesApiClient.get('discover/movie');

    debugLog('[RESULT STATUS]: ${result.statusCode}');
    debugLog('[RESULT MESSAGE]: ${result.message}');
    debugLog('[RESULT DATA]: ${result.data}', prettyPrint: true);
  }
}

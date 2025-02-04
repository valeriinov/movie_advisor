import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'env_provider.dart';

class ImplEnvProvider implements EnvProvider {
  static const _baseUrlKey = 'BASE_URL';
  static const _imgUrlKey = 'IMG_URL';
  static const _apiVersionKey = 'API_VERSION';
  static const _apiTokenKey = 'API_ACCESS_TOKEN';

  @override
  String get baseUrl =>
      '${_getEnvVariable(_baseUrlKey)}${_getEnvVariable(_apiVersionKey)}';

  @override
  String get imageUrl => _getEnvVariable(_imgUrlKey);

  @override
  String get apiToken => _getEnvVariable(_apiTokenKey);

  @override
  Future<void> init(String envFilePath) async {
    await dotenv.load(fileName: envFilePath);
  }

  String _getEnvVariable(String variableName) => dotenv.env[variableName] ?? '';
}

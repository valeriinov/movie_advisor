import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'env_provider.dart';

class ImplEnvProvider implements EnvProvider {
  static const _baseUrlKey = 'BASE_URL';

  @override
  String get baseUrl => getEnvVariable(_baseUrlKey);

  @override
  Future<void> init(String envFilePath) async {
    await dotenv.load(fileName: envFilePath);
  }

  @override
  String getEnvVariable(String variableName) => dotenv.env[variableName] ?? '';
}

import '../network/env_provider/env_provider.dart';
import '../repositories/settings_provider.dart';

class ImplSettingsProvider implements SettingsProvider {
  final Function() _localeResolver; // = () => "en";
  final EnvProvider _envProvider;

  ImplSettingsProvider(
      {required String Function() localeResolver,
      required EnvProvider envProvider})
      : _envProvider = envProvider,
        _localeResolver = localeResolver;

  @override
  Future<String> getAuthToken() async {
    return _envProvider.apiToken;
  }

  @override
  String get currentLocale => _localeResolver();
}

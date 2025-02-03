import '../repositories/settings_provider.dart';
import '../repositories/storage_local_data_source.dart';

class ImplSettingsProvider implements SettingsProvider {
  final Function() _localeResolver; // = () => "en";
  final StorageLocalDataSource _localStorage;

  ImplSettingsProvider(
      {required String Function() localeResolver,
      required StorageLocalDataSource localStorage})
      : _localStorage = localStorage,
        _localeResolver = localeResolver;

  @override
  Future<String> getAuthToken() async {
    final token =
        await _localStorage.get<String>(key: LocalStorageKeys.authToken);
    return token ?? '';
  }

  @override
  String get currentLocale => _localeResolver();
}

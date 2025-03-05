import 'package:upgrader/upgrader.dart';

abstract class AppCastConfigurationParams {
  AppCastConfigurationParams._();

  static const String _url =
      'https://github.com/valeriinov/movie_advisor_appcast/raw/refs/heads/main/movie_advisor_update_app.xml';

  static UpgraderStoreController getStoreController() =>
      UpgraderStoreController(
        onAndroid: () => UpgraderAppcastStore(appcastURL: _url),
        oniOS: () => UpgraderAppcastStore(appcastURL: _url),
      );
}

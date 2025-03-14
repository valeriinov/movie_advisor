abstract interface class SettingsLocalDataSource {
  Future<bool> isFirstLaunch();

  Future<void> setFirstLaunch();
}

import '../entities/result.dart';

abstract interface class SettingsRepository {
  Future<Result<bool>> isFirstLaunch();

  Future<Result<void>> setFirstLaunch();
}

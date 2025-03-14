import '../entities/result.dart';
import '../repositories/settings_repository.dart';

class SettingsUseCase {
  final SettingsRepository _repository;

  SettingsUseCase({required SettingsRepository repository})
    : _repository = repository;

  Future<Result<bool>> isFirstLaunch() {
    return _repository.isFirstLaunch();
  }

  Future<Result<void>> setFirstLaunch() {
    return _repository.setFirstLaunch();
  }
}

import '../repositories/sync_repository.dart';

import '../entities/result.dart';

class SyncUseCase {
  final SyncRepository _repository;

  SyncUseCase({required SyncRepository repository}) : _repository = repository;

  Future<Result<void>> syncMovies() {
    return _repository.syncMovies();
  }

  Future<Result<void>> syncSeries() {
    return _repository.syncSeries();
  }
}

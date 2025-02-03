import '../repositories/home_repository.dart';

import '../entities/result.dart';

class HomeUseCase {
  final HomeRepository _repository;

HomeUseCase({required HomeRepository repository}) : _repository = repository;

  Future<Result<void>> fetch() {
    return _repository.fetch();
  }
}

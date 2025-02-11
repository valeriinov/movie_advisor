import '../repositories/search_repository.dart';

import '../entities/result.dart';

class SearchUseCase {
  final SearchRepository _repository;

SearchUseCase({required SearchRepository repository}) : _repository = repository;

  Future<Result<void>> fetch() {
    return _repository.fetch();
  }
}

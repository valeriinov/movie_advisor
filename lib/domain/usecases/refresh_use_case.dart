import '../repositories/refresh_repository.dart';

import '../entities/result.dart';

class RefreshUseCase {
  final RefreshRepository _repository;

  RefreshUseCase({required RefreshRepository repository})
    : _repository = repository;

  Stream<Result<bool>> shouldRefreshContent({required bool isMovies}) {
    return _repository.shouldRefreshContent(isMovies: isMovies);
  }
}

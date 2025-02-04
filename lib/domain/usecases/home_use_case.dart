import '../repositories/home_repository.dart';

import '../entities/result.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase({required HomeRepository repository}) : _repository = repository;

  Future<Result<void>> getNowPlayingMovies({int page = 1}) {
    return _repository.getNowPlayingMovies(page: page);
  }
}

import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../repositories/home_repository.dart';

class HomeMoviesUseCase {
  final HomeRepository _repository;

  HomeMoviesUseCase({required HomeRepository repository})
      : _repository = repository;

  Future<Result<PaginatedMovies>> getSuggestedMovies() {
    return _repository.getSuggestedMovies();
  }

  Future<Result<PaginatedMovies>> getNowPlayingMovies({int page = 1}) {
    return _repository.getNowPlayingMovies(page: page);
  }

  Future<Result<PaginatedMovies>> getUpcomingMovies({int page = 1}) {
    return _repository.getUpcomingMovies(page: page);
  }

  Future<Result<PaginatedMovies>> getTopRatedMovies({int page = 1}) {
    return _repository.getTopRatedMovies(page: page);
  }

  Future<Result<PaginatedMovies>> getPopularMovies({int page = 1}) {
    return _repository.getPopularMovies(page: page);
  }
}

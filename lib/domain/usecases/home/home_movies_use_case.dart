import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../repositories/home_repository.dart';
import 'home_use_case.dart';

class HomeMoviesUseCase implements HomeUseCase<MovieShortData> {
  final HomeRepository _repository;

  HomeMoviesUseCase({required HomeRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedMovies>> getSuggested() {
    return _repository.getSuggestedMovies();
  }

  @override
  Future<Result<PaginatedMovies>> getNowPlaying({int page = 1}) {
    return _repository.getNowPlayingMovies(page: page);
  }

  @override
  Future<Result<PaginatedMovies>> getUpcoming({int page = 1}) {
    return _repository.getUpcomingMovies(page: page);
  }

  @override
  Future<Result<PaginatedMovies>> getTopRated({int page = 1}) {
    return _repository.getTopRatedMovies(page: page);
  }

  @override
  Future<Result<PaginatedMovies>> getPopular({int page = 1}) {
    return _repository.getPopularMovies(page: page);
  }
}

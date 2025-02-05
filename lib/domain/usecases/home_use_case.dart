import '../entities/movie/movie_short_data.dart';
import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';
import '../entities/series/series_short_data.dart';
import '../repositories/home_repository.dart';

class HomeUseCase {
  final HomeRepository _repository;

  HomeUseCase({required HomeRepository repository}) : _repository = repository;

  Future<Result<ListWithPaginationData<MovieShortData>>> getSuggestedMovies() {
    return _repository.getSuggestedMovies();
  }

  Future<Result<ListWithPaginationData<MovieShortData>>> getNowPlayingMovies({int page = 1}) {
    return _repository.getNowPlayingMovies(page: page);
  }

  Future<Result<ListWithPaginationData<MovieShortData>>> getUpcomingMovies({int page = 1}) {
    return _repository.getUpcomingMovies(page: page);
  }

  Future<Result<ListWithPaginationData<MovieShortData>>> getTopRatedMovies({int page = 1}) {
    return _repository.getTopRatedMovies(page: page);
  }

  Future<Result<ListWithPaginationData<MovieShortData>>> getPopularMovies({int page = 1}) {
    return _repository.getPopularMovies(page: page);
  }

  Future<Result<ListWithPaginationData<SeriesShortData>>> getSuggestedSeries() {
    return _repository.getSuggestedSeries();
  }

  Future<Result<ListWithPaginationData<SeriesShortData>>> getAiringTodaySeries({int page = 1}) {
    return _repository.getAiringTodaySeries(page: page);
  }

  Future<Result<ListWithPaginationData<SeriesShortData>>> getOnTheAirSeries({int page = 1}) {
    return _repository.getOnTheAirSeries(page: page);
  }

  Future<Result<ListWithPaginationData<SeriesShortData>>> getTopRatedSeries({int page = 1}) {
    return _repository.getTopRatedSeries(page: page);
  }

  Future<Result<ListWithPaginationData<SeriesShortData>>> getPopularSeries({int page = 1}) {
    return _repository.getPopularSeries(page: page);
  }
}

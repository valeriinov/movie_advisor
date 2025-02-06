import '../entities/pagination/list_with_pagination_data.dart';
import '../entities/result.dart';

abstract interface class HomeRepository {
  Future<Result<PaginatedMovies>> getSuggestedMovies();

  Future<Result<PaginatedMovies>> getNowPlayingMovies({required int page});

  Future<Result<PaginatedMovies>> getUpcomingMovies({required int page});

  Future<Result<PaginatedMovies>> getTopRatedMovies({required int page});

  Future<Result<PaginatedMovies>> getPopularMovies({required int page});

  Future<Result<PaginatedSeries>> getSuggestedSeries();

  Future<Result<PaginatedSeries>> getNowPlayingSeries({required int page});

  Future<Result<PaginatedSeries>> getUpcomingSeries({required int page});

  Future<Result<PaginatedSeries>> getTopRatedSeries({required int page});

  Future<Result<PaginatedSeries>> getPopularSeries({required int page});
}

import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../repositories/watch_repository.dart';
import 'watch_use_case.dart';

class WatchMovieUseCase implements WatchUseCase<MovieShortData> {
  final WatchRepository _repository;

  WatchMovieUseCase({required WatchRepository repository})
    : _repository = repository;

  @override
  Stream<Result<MovieShortData>> watchChanges() {
    return _repository.watchChangesMovies();
  }

  @override
  Future<Result<PaginatedMovies>> getWatchlist({required int page}) {
    return _repository.getWatchlistMovies(page: page);
  }

  @override
  Future<Result<PaginatedMovies>> getWatched({required int page}) {
    return _repository.getWatchedMovies(page: page);
  }

  @override
  Future<Result<void>> addToWatchlist(MovieShortData data) {
    return _repository.addToWatchlistMovie(data);
  }

  @override
  Future<Result<void>> addToWatched(
    MovieShortData data, {
    bool deleteFromWatchlistIfExists = false,
  }) {
    return _repository.addToWatchedMovie(
      data,
      deleteFromWatchlistIfExists: deleteFromWatchlistIfExists,
    );
  }

  @override
  Future<Result<void>> removeFromWatchlist(int id) {
    return _repository.removeFromWatchlistMovie(id);
  }

  @override
  Future<Result<void>> removeFromWatched(int id) {
    return _repository.removeFromWatchedMovie(id);
  }
}

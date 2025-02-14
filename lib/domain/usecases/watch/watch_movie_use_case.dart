import '../../entities/movie/movie_short_data.dart';
import '../../entities/result.dart';
import '../../repositories/watch_repository.dart';
import 'watch_use_case.dart';

class WatchMovieUseCase implements WatchUseCase<MovieShortData> {
  final WatchRepository _repository;

  WatchMovieUseCase({required WatchRepository repository})
      : _repository = repository;

  @override
  Future<Result<void>> addToWatchlist(MovieShortData data) {
    return _repository.addToWatchlistMovie(data);
  }

  @override
  Future<Result<void>> addToWatched(MovieShortData data) {
    return _repository.addToWatchedMovie(data);
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

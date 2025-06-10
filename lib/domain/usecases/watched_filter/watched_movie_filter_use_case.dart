import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watched_filter/movies_watched_filter_data.dart';
import '../../repositories/watch_repository.dart';
import 'watched_filter_use_case.dart';

class WatchedMovieFilterUseCase
    implements WatchedFilterUseCase<MovieShortData, MoviesWatchedFilterData> {
  final WatchRepository _repository;

  WatchedMovieFilterUseCase({required WatchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedMovies>> getWatched({
    required int page,
    MoviesWatchedFilterData filter = const MoviesWatchedFilterData(),
  }) {
    return _repository.getWatchedMovies(page: page, filter: filter);
  }
}

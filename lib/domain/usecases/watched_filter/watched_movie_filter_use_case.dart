import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watched_filter/movies_watched_filter_data.dart';
import '../../repositories/watch_repository.dart';
import '../../repositories/watched_filter_repository.dart';
import 'watched_filter_use_case.dart';

class WatchedMovieFilterUseCase
    implements WatchedFilterUseCase<MovieShortData, MoviesWatchedFilterData> {
  final WatchRepository _watchRepository;
  final WatchedFilterRepository _filterRepository;

  WatchedMovieFilterUseCase({
    required WatchRepository watchRepository,
    required WatchedFilterRepository filterRepository,
  }) : _filterRepository = filterRepository,
       _watchRepository = watchRepository;

  @override
  Future<Result<void>> saveFilter(MoviesWatchedFilterData filter) {
    return _filterRepository.saveMoviesFilter(filter);
  }

  @override
  Future<Result<MoviesWatchedFilterData?>> getSavedFilter() {
    return _filterRepository.getSavedMoviesFilter();
  }

  @override
  Future<Result<PaginatedMovies>> getWatched({
    required int page,
    MoviesWatchedFilterData filter = const MoviesWatchedFilterData(),
  }) {
    return _watchRepository.getWatchedMovies(page: page, filter: filter);
  }
}

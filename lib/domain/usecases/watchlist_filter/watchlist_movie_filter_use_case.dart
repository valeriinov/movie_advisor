import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../repositories/watch_repository.dart';
import '../../repositories/watchlist_filter_repository.dart';
import 'watchlist_filter_use_case.dart';

class WatchlistMovieFilterUseCase
    implements
        WatchlistFilterUseCase<MovieShortData, MoviesWatchlistFilterData> {
  final WatchRepository _watchRepository;
  final WatchlistFilterRepository _filterRepository;

  WatchlistMovieFilterUseCase({
    required WatchRepository watchRepository,
    required WatchlistFilterRepository filterRepository,
  }) : _filterRepository = filterRepository,
       _watchRepository = watchRepository;

  @override
  Future<Result<void>> saveFilter(MoviesWatchlistFilterData filter) {
    return _filterRepository.saveMoviesFilter(filter);
  }

  @override
  Future<Result<MoviesWatchlistFilterData?>> getSavedFilter() {
    return _filterRepository.getSavedMoviesFilter();
  }

  @override
  Future<Result<PaginatedMovies>> getWatchlist({
    required int page,
    MoviesWatchlistFilterData filter = const MoviesWatchlistFilterData(),
  }) {
    return _watchRepository.getWatchlistMovies(page: page, filter: filter);
  }
}

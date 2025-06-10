import '../../entities/movie/movie_short_data.dart';
import '../../entities/pagination/list_with_pagination_data.dart';
import '../../entities/result.dart';
import '../../entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../repositories/watch_repository.dart';
import 'watchlist_filter_use_case.dart';

class WatchlistMovieFilterUseCase
    implements
        WatchlistFilterUseCase<MovieShortData, MoviesWatchlistFilterData> {
  final WatchRepository _repository;

  WatchlistMovieFilterUseCase({required WatchRepository repository})
    : _repository = repository;

  @override
  Future<Result<PaginatedMovies>> getWatchlist({
    required int page,
    MoviesWatchlistFilterData filter = const MoviesWatchlistFilterData(),
  }) {
    return _repository.getWatchlistMovies(page: page, filter: filter);
  }
}

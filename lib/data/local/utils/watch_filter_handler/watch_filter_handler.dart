import 'package:drift/drift.dart';

import '../../../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../../../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../../../dto/watched_filter/watched_sort_by_dto.dart';
import '../../../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../../../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';
import '../../../dto/watchlist_filter/watchlist_sort_by_dto.dart';
import '../../tables/movies_table.dart';
import '../../tables/series_table.dart';

abstract interface class WatchFilterHandler {
  Expression<bool> moviesWatchedPredicate(
    MoviesTable table,
    MoviesWatchedFilterDataDto filter,
  );

  Expression<bool> moviesWatchlistPredicate(
    MoviesTable table,
    MoviesWatchlistFilterDataDto filter,
  );

  Expression<bool> seriesWatchedPredicate(
    SeriesTable table,
    SeriesWatchedFilterDataDto filter,
  );

  Expression<bool> seriesWatchlistPredicate(
    SeriesTable table,
    SeriesWatchlistFilterDataDto filter,
  );

  OrderingTerm moviesWatchedOrder(MoviesTable table, WatchedSortByDto? sortBy);

  OrderingTerm moviesWatchlistOrder(
    MoviesTable table,
    WatchlistSortByDto? sortBy,
  );

  OrderingTerm seriesWatchedOrder(SeriesTable table, WatchedSortByDto? sortBy);

  OrderingTerm seriesWatchlistOrder(
    SeriesTable table,
    WatchlistSortByDto? sortBy,
  );
}

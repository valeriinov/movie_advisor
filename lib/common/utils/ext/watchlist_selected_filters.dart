import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/watchlist_filter_data.dart';

extension WatchlistSelectedFilters on WatchlistFilterData {
  int? getSelectedFiltersCount() {
    return _getWithGenresCount() +
        _getWithoutGenresCount() +
        withCountries.length +
        (includeWatched ? 0 : 1) +
        (fromDate != null ? 1 : 0) +
        (toDate != null ? 1 : 0);
  }

  int _getWithGenresCount() {
    return switch (this) {
      MoviesWatchlistFilterData f => f.withGenres.length,
      SeriesWatchlistFilterData f => f.withGenres.length,
      _ => -1,
    };
  }

  int _getWithoutGenresCount() {
    return switch (this) {
      MoviesWatchlistFilterData f => f.withoutGenres.length,
      SeriesWatchlistFilterData f => f.withoutGenres.length,
      _ => -1,
    };
  }
}

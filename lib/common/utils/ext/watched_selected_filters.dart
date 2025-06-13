import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/watched_filter_data.dart';

extension WatchedSelectedFilters on WatchedFilterData {
  int? getSelectedFiltersCount() {
    return _getWithGenresCount() +
        _getWithoutGenresCount() +
        withCountries.length +
        (includeWatchlist ? 0 : 1) +
        (fromPremiereDate != null ? 1 : 0) +
        (toPremiereDate != null ? 1 : 0) +
        (fromWatchedDate != null ? 1 : 0) +
        (toWatchedDate != null ? 1 : 0);
  }

  int _getWithGenresCount() {
    return switch (this) {
      MoviesWatchedFilterData f => f.withGenres.length,
      SeriesWatchedFilterData f => f.withGenres.length,
      _ => -1,
    };
  }

  int _getWithoutGenresCount() {
    return switch (this) {
      MoviesWatchedFilterData f => f.withoutGenres.length,
      SeriesWatchedFilterData f => f.withoutGenres.length,
      _ => -1,
    };
  }
}

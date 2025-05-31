import '../../../domain/entities/filter/filter_data.dart';
import '../../../domain/entities/filter/movies_filter_data.dart';
import '../../../domain/entities/filter/series_filter_data.dart';

extension SelectedFiltersHandler on FilterData {
  int? getSelectedFiltersCount() {
    return _getWithGenresCount() +
        _getWithoutGenresCount() +
        withCountries.length +
        (includeWatched ? 0 : 1) +
        (includeWatchlist ? 0 : 1) +
        (fromDate != null ? 1 : 0) +
        (toDate != null ? 1 : 0);
  }

  int _getWithGenresCount() {
    return switch (this) {
      MoviesFilterData f => f.withGenres.length,
      SeriesFilterData f => f.withGenres.length,
      _ => -1,
    };
  }

  int _getWithoutGenresCount() {
    return switch (this) {
      MoviesFilterData f => f.withoutGenres.length,
      SeriesFilterData f => f.withoutGenres.length,
      _ => -1,
    };
  }
}

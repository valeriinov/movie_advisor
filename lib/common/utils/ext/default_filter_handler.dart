import '../../../domain/entities/filter/movies_filter_data.dart';
import '../../../domain/entities/filter/series_filter_data.dart';

extension DefaultMoviesFilterHandler on MoviesFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatched == true &&
        includeWatchlist == true &&
        fromDate == null &&
        toDate == null;
  }
}

extension DefaultSeriesFilterHandler on SeriesFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatched == true &&
        includeWatchlist == true &&
        fromDate == null &&
        toDate == null;
  }
}

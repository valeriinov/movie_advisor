import '../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../domain/entities/watched_filter/series_watched_filter_data.dart';

extension WatchedDefaultMoviesFilter on MoviesWatchedFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatchlist == true &&
        fromPremiereDate == null &&
        toPremiereDate == null &&
        fromWatchedDate == null &&
        toWatchedDate == null;
  }
}

extension WatchedDefaultSeriesFilter on SeriesWatchedFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatchlist == true &&
        fromPremiereDate == null &&
        toPremiereDate == null &&
        fromWatchedDate == null &&
        toWatchedDate == null;
  }
}

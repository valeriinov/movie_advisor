import '../../../domain/entities/watchlist_filter/movies_watchlist_filter_data.dart';
import '../../../domain/entities/watchlist_filter/series_watchlist_filter_data.dart';

extension WatchlistDefaultMoviesFilter on MoviesWatchlistFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatched == true &&
        fromPremiereDate == null &&
        toPremiereDate == null &&
        fromAddedDate == null &&
        toAddedDate == null;
  }
}

extension WatchlistDefaultSeriesFilter on SeriesWatchlistFilterData {
  bool get isDefault {
    return withGenres.isEmpty &&
        withoutGenres.isEmpty &&
        withCountries.isEmpty &&
        includeWatched == true &&
        fromPremiereDate == null &&
        toPremiereDate == null &&
        fromAddedDate == null &&
        toAddedDate == null;
  }
}

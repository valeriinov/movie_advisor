import 'package:drift/drift.dart';

import '../../../dto/watchlist_filter/movies_watchlist_filter_data_dto.dart';
import '../../../dto/watchlist_filter/series_watchlist_filter_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesWatchlistFilterMapper on WatchlistMoviesFilterTableData {
  MoviesWatchlistFilterDataDto toDto() {
    return MoviesWatchlistFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      fromPremiereDate: fromPremiereDate,
      toPremiereDate: toPremiereDate,
      fromAddedDate: fromAddedDate,
      toAddedDate: toAddedDate,
    );
  }
}

extension SeriesWatchlistFilterMapper on WatchlistSeriesFilterTableData {
  SeriesWatchlistFilterDataDto toDto() {
    return SeriesWatchlistFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      fromPremiereDate: fromPremiereDate,
      toPremiereDate: toPremiereDate,
      fromAddedDate: fromAddedDate,
      toAddedDate: toAddedDate,
    );
  }
}

extension WatchlistMoviesFilterTableMapper on MoviesWatchlistFilterDataDto {
  WatchlistMoviesFilterTableCompanion toTableData() {
    return WatchlistMoviesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      fromPremiereDate: Value(fromPremiereDate),
      toPremiereDate: Value(toPremiereDate),
      fromAddedDate: Value(fromAddedDate),
      toAddedDate: Value(toAddedDate),
    );
  }
}

extension WatchlistSeriesFilterTableMapper on SeriesWatchlistFilterDataDto {
  WatchlistSeriesFilterTableCompanion toTableData() {
    return WatchlistSeriesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      fromPremiereDate: Value(fromPremiereDate),
      toPremiereDate: Value(toPremiereDate),
      fromAddedDate: Value(fromAddedDate),
      toAddedDate: Value(toAddedDate),
    );
  }
}

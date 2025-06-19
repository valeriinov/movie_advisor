import 'package:drift/drift.dart';

import '../../../dto/watched_filter/movies_watched_filter_data_dto.dart';
import '../../../dto/watched_filter/series_watched_filter_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesWatchedFilterMapper on WatchedMoviesFilterTableData {
  MoviesWatchedFilterDataDto toDto() {
    return MoviesWatchedFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatchlist: includeWatchlist,
      fromPremiereDate: fromPremiereDate,
      toPremiereDate: toPremiereDate,
      fromWatchedDate: fromWatchedDate,
      toWatchedDate: toWatchedDate,
    );
  }
}

extension SeriesWatchedFilterMapper on WatchedSeriesFilterTableData {
  SeriesWatchedFilterDataDto toDto() {
    return SeriesWatchedFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatchlist: includeWatchlist,
      fromPremiereDate: fromPremiereDate,
      toPremiereDate: toPremiereDate,
      fromWatchedDate: fromWatchedDate,
      toWatchedDate: toWatchedDate,
    );
  }
}

extension WatchedMoviesFilterTableMapper on MoviesWatchedFilterDataDto {
  WatchedMoviesFilterTableCompanion toTableData() {
    return WatchedMoviesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatchlist: Value(includeWatchlist),
      fromPremiereDate: Value(fromPremiereDate),
      toPremiereDate: Value(toPremiereDate),
      fromWatchedDate: Value(fromWatchedDate),
      toWatchedDate: Value(toWatchedDate),
    );
  }
}

extension WatchedSeriesFilterTableMapper on SeriesWatchedFilterDataDto {
  WatchedSeriesFilterTableCompanion toTableData() {
    return WatchedSeriesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatchlist: Value(includeWatchlist),
      fromPremiereDate: Value(fromPremiereDate),
      toPremiereDate: Value(toPremiereDate),
      fromWatchedDate: Value(fromWatchedDate),
      toWatchedDate: Value(toWatchedDate),
    );
  }
}

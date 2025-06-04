import 'package:drift/drift.dart';

import '../../../dto/filter/movies_filter_data_dto.dart';
import '../../../dto/filter/series_filter_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesFilterMapper on MoviesFilterTableData {
  MoviesFilterDataDto toDto() {
    return MoviesFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      includeWatchlist: includeWatchlist,
      fromDate: fromDate,
      toDate: toDate,
    );
  }
}

extension SeriesFilterMapper on SeriesFilterTableData {
  SeriesFilterDataDto toDto() {
    return SeriesFilterDataDto(
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      includeWatchlist: includeWatchlist,
      fromDate: fromDate,
      toDate: toDate,
    );
  }
}

extension MoviesFilterTableMapper on MoviesFilterDataDto {
  MoviesFilterTableCompanion toTableData() {
    return MoviesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      includeWatchlist: Value(includeWatchlist),
      fromDate: Value(fromDate),
      toDate: Value(toDate),
    );
  }
}

extension SeriesFilterTableMapper on SeriesFilterDataDto {
  SeriesFilterTableCompanion toTableData() {
    return SeriesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      includeWatchlist: Value(includeWatchlist),
      fromDate: Value(fromDate),
      toDate: Value(toDate),
    );
  }
}

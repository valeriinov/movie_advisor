import 'package:drift/drift.dart';

import '../../../dto/filter/movies_filter_data_dto.dart';
import '../../../dto/filter/series_filter_data_dto.dart';
import '../../app_local_database.dart';

extension MoviesFilterMapper on MoviesFilterTableData {
  MoviesFilterDataDto toDto() {
    return MoviesFilterDataDto(
      year: year,
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      includeWatchlist: includeWatchlist,
    );
  }
}

extension SeriesFilterMapper on SeriesFilterTableData {
  SeriesFilterDataDto toDto() {
    return SeriesFilterDataDto(
      year: year,
      sortBy: sortBy,
      withCountries: withCountries,
      withGenres: withGenres,
      withoutGenres: withoutGenres,
      includeWatched: includeWatched,
      includeWatchlist: includeWatchlist,
    );
  }
}

extension MoviesFilterTableMapper on MoviesFilterDataDto {
  MoviesFilterTableCompanion toTableData() {
    return MoviesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      year: Value(year),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      includeWatchlist: Value(includeWatchlist),
    );
  }
}

extension SeriesFilterTableMapper on SeriesFilterDataDto {
  SeriesFilterTableCompanion toTableData() {
    return SeriesFilterTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      year: Value(year),
      sortBy: Value(sortBy),
      withCountries: Value(withCountries),
      withGenres: Value(withGenres),
      withoutGenres: Value(withoutGenres),
      includeWatched: Value(includeWatched),
      includeWatchlist: Value(includeWatchlist),
    );
  }
}

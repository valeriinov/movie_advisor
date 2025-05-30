import 'package:drift/drift.dart';

import '../utils/country_converter.dart';
import '../utils/filter_sort_by_converter.dart';
import '../utils/servies_genres_converter.dart';

class SeriesFilterTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get year => integer().nullable()();

  TextColumn get sortBy => text().map(filterSortByConverter).nullable()();

  TextColumn get withCountries => text().map(countryConverter).nullable()();

  TextColumn get withGenres => text().map(seriesGenresConverter).nullable()();

  TextColumn get withoutGenres =>
      text().map(seriesGenresConverter).nullable()();

  BoolColumn get includeWatched => boolean().nullable()();

  BoolColumn get includeWatchlist => boolean().nullable()();
}

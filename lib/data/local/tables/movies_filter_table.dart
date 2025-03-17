import 'package:drift/drift.dart';

import '../utils/filter_country_converter.dart';
import '../utils/filter_sort_by_converter.dart';
import '../utils/movie_genres_converter.dart';

class MoviesFilterTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get year => integer().nullable()();

  TextColumn get sortBy => text().map(filterSortByConverter).nullable()();

  TextColumn get withCountries =>
      text().map(filterCountryConverter).nullable()();

  TextColumn get withoutCountries =>
      text().map(filterCountryConverter).nullable()();

  TextColumn get withGenres => text().map(movieGenresConverter).nullable()();

  TextColumn get withoutGenres => text().map(movieGenresConverter).nullable()();
}

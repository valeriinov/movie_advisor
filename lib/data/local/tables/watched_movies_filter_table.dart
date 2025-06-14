import 'package:drift/drift.dart';

import '../utils/country_converter.dart';
import '../utils/movie_genres_converter.dart';
import '../utils/watched_filter_sort_by_converter.dart';

class WatchedMoviesFilterTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get sortBy =>
      text().map(watchedFilterSortByConverter).nullable()();

  TextColumn get withCountries => text().map(countryConverter).nullable()();

  TextColumn get withGenres => text().map(movieGenresConverter).nullable()();

  TextColumn get withoutGenres => text().map(movieGenresConverter).nullable()();

  BoolColumn get includeWatchlist => boolean().nullable()();

  DateTimeColumn get fromPremiereDate => dateTime().nullable()();

  DateTimeColumn get toPremiereDate => dateTime().nullable()();

  DateTimeColumn get fromWatchedDate => dateTime().nullable()();

  DateTimeColumn get toWatchedDate => dateTime().nullable()();
}

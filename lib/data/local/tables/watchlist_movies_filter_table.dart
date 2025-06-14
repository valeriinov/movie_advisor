import 'package:drift/drift.dart';

import '../utils/country_converter.dart';
import '../utils/movie_genres_converter.dart';
import '../utils/watchlist_filter_sort_by_converter.dart';

class WatchlistMoviesFilterTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get sortBy =>
      text().map(watchlistFilterSortByConverter).nullable()();

  TextColumn get withCountries => text().map(countryConverter).nullable()();

  TextColumn get withGenres => text().map(movieGenresConverter).nullable()();

  TextColumn get withoutGenres => text().map(movieGenresConverter).nullable()();

  BoolColumn get includeWatched => boolean().nullable()();

  DateTimeColumn get fromPremiereDate => dateTime().nullable()();

  DateTimeColumn get toPremiereDate => dateTime().nullable()();

  DateTimeColumn get fromAddedDate => dateTime().nullable()();

  DateTimeColumn get toAddedDate => dateTime().nullable()();
}

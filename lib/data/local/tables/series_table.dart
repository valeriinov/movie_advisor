import 'package:drift/drift.dart';

import '../utils/country_converter.dart';
import '../utils/localized_string_converter.dart';
import '../utils/rating_converter.dart';
import '../utils/servies_genres_converter.dart';

class SeriesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get tmdbId => integer().unique()();

  TextColumn get posterUrl => text().nullable()();

  TextColumn get genres => text().map(seriesGenresConverter).nullable()();

  TextColumn get originCountry => text().map(countryConverter).nullable()();

  DateTimeColumn get premiereDate => dateTime().nullable()();

  TextColumn get title => text().nullable()();

  TextColumn get tmdbRating => text().map(ratingConverter).nullable()();

  IntColumn get userRating => integer().nullable()();

  BoolColumn get isInWatchlist => boolean().nullable()();

  BoolColumn get isWatched => boolean().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get watchlistAddedAt => dateTime().nullable()();

  DateTimeColumn get lastWatchedAt => dateTime().nullable()();

  TextColumn get localizedTitle =>
      text().map(localizedStringConverter).nullable()();

  TextColumn get localizedPosterUrl =>
      text().map(localizedStringConverter).nullable()();
}

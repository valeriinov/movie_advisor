import 'package:drift/drift.dart';

import '../utils/country_converter.dart';
import '../utils/localized_string_converter.dart';
import '../utils/movie_genres_converter.dart';
import '../utils/rating_converter.dart';

class MoviesTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get tmdbId => integer().unique()();

  TextColumn get genres => text().map(movieGenresConverter).nullable()();

  TextColumn get originCountry => text().map(countryConverter).nullable()();

  DateTimeColumn get premiereDate => dateTime().nullable()();

  TextColumn get tmdbRating => text().map(ratingConverter).nullable()();

  IntColumn get userRating => integer().nullable()();

  BoolColumn get isInWatchlist => boolean().nullable()();

  BoolColumn get isWatched => boolean().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  TextColumn get localizedTitle =>
      text().map(localizedStringConverter).nullable()();

  TextColumn get localizedPosterUrl =>
      text().map(localizedStringConverter).nullable()();
}

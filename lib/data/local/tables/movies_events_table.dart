import 'package:drift/drift.dart';

// ignore_for_file: unused_import
import 'movies_table.dart'; // This import is necessary to reference the movies_table

class MoviesEventsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get tmdbId => integer().customConstraint(
    'NOT NULL REFERENCES movies_table(tmdb_id) ON DELETE CASCADE',
  )();

  TextColumn get type => text().nullable()();

  IntColumn get userRating => integer().nullable()();

  DateTimeColumn get at => dateTime().withDefault(currentDateAndTime)();
}

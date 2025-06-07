import 'package:drift/drift.dart';

// ignore_for_file: unused_import
import '../utils/event_type_converter.dart';
import 'series_table.dart'; // This import is necessary to reference the series_table

class SeriesEventsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get eventId => text().unique()();

  IntColumn get tmdbId => integer().customConstraint(
    'NOT NULL REFERENCES series_table(tmdb_id) ON DELETE CASCADE',
  )();

  TextColumn get type => text().map(eventTypeConverter).nullable()();

  IntColumn get userRating => integer().nullable()();

  DateTimeColumn get at => dateTime().withDefault(currentDateAndTime)();
}

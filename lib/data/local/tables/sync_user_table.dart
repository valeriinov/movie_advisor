import 'package:drift/drift.dart';

/// Stores data of the user for whom the data
/// synchronization was performed.
class SyncUserTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get uid => text().unique()();

  TextColumn get email => text().unique()();

  DateTimeColumn get moviesSyncedAt =>
      dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get seriesSyncedAt =>
      dateTime().withDefault(currentDateAndTime)();
}

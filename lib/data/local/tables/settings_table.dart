import 'package:drift/drift.dart';

class SettingsTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  BoolColumn get isFirstLaunch => boolean().nullable()();
}

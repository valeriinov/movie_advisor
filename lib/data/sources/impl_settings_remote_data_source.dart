import 'package:drift/drift.dart';

import '../local/app_local_database.dart';
import '../repositories/settings/settings_local_data_source.dart';

class ImplSettingsLocalDataSource implements SettingsLocalDataSource {
  final AppLocalDatabase _database;

  ImplSettingsLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<bool> isFirstLaunch() async {
    final record = await _fetchSettingsRecord();

    return record?.isFirstLaunch ?? true;
  }

  Future<SettingsTableData?> _fetchSettingsRecord() {
    final query = _database.select(_database.settingsTable)
      ..where((tbl) => tbl.id.equals(1));
    return query.getSingleOrNull();
  }

  @override
  Future<void> setFirstLaunch() async {
    await _database
        .into(_database.settingsTable)
        .insertOnConflictUpdate(
          SettingsTableCompanion(id: Value(1), isFirstLaunch: Value(false)),
        );
  }
}

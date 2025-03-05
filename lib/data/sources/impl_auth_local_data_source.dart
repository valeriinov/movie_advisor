import '../local/app_local_database.dart';
import '../repositories/auth/auth_local_data_source.dart';

class ImplAuthLocalDataSource implements AuthLocalDataSource {
  final AppLocalDatabase _database;

  ImplAuthLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Future<void> clearUserData() async {
    await _database.delete(_database.syncUserTable).go();
  }
}

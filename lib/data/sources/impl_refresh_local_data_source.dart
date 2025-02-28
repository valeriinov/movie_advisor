import '../local/app_local_database.dart';
import '../repositories/refresh/refresh_local_data_source.dart';

class ImplRefreshLocalDataSource implements RefreshLocalDataSource {
  final AppLocalDatabase _database;

  ImplRefreshLocalDataSource({required AppLocalDatabase database})
    : _database = database;

  @override
  Stream<bool> shouldRefreshContent({required bool isMovies}) {
    return _database
        .select(_database.syncUserTable)
        .watchSingle()
        .map(
          (syncUser) =>
              isMovies ? syncUser.moviesSyncedAt : syncUser.seriesSyncedAt,
        )
        .distinct()
        .skip(1)
        .map((_) => true);
  }
}

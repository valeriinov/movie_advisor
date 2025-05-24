import 'package:drift/drift.dart';

import '../../../dto/sync/sync_user_data_dto.dart';
import '../../app_local_database.dart';

extension SyncUserMapper on SyncUserTableData {
  SyncUserDataDto toDto() {
    return SyncUserDataDto(
      id: uid,
      email: email,
      moviesSyncedAt: moviesSyncedAt,
      seriesSyncedAt: seriesSyncedAt,
    );
  }
}

extension UserTableMapper on SyncUserDataDto {
  SyncUserTableCompanion toTableData() {
    return SyncUserTableCompanion(
      // We need only one row in the table.
      id: Value(1),
      uid: Value(id ?? ''),
      email: Value(email ?? ''),
      moviesSyncedAt: moviesSyncedAt != null
          ? Value(moviesSyncedAt!)
          : Value.absent(),
      seriesSyncedAt: seriesSyncedAt != null
          ? Value(seriesSyncedAt!)
          : Value.absent(),
    );
  }
}

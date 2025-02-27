import 'package:drift/drift.dart';

import '../../../dto/auth/user_data_dto.dart';
import '../../app_local_database.dart';

extension SyncUserMapper on SyncUserTableData {
  UserDataDto toDto() {
    return UserDataDto(id: uid, email: email);
  }
}

extension UserTableMapper on UserDataDto {
  SyncUserTableCompanion toTableData() {
    return SyncUserTableCompanion(
      id: Value(1), // We need only one row in the table.
      uid: Value(id ?? ''),
      email: Value(email ?? ''),
    );
  }
}

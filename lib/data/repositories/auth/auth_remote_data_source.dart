import '../../dto/auth/auth_data_dto.dart';
import '../../dto/auth/reg_data_dto.dart';
import '../../dto/auth/reset_pass_data_dto.dart';
import '../../dto/auth/user_data_dto.dart';

abstract interface class AuthRemoteDataSource {
  Stream<UserDataDto?> get userChanges;

  Future<UserDataDto?> getUser();

  Future<void> signIn(AuthDataDto data);

  Future<void> signUp(RegDataDto data);

  Future<void> resetPass(ResetPassDataDto data);

  Future<void> signOut();

  Future<void> deleteAccount();
}

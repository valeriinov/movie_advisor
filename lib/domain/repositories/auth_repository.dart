import '../entities/auth/auth_data.dart';
import '../entities/auth/reg_data.dart';
import '../entities/auth/reset_pass_data.dart';
import '../entities/auth/user_data.dart';
import '../entities/result.dart';

abstract interface class AuthRepository {
  Stream<Result<UserData?>> get userChanges;

  Future<Result<UserData?>> getUser();

  Future<Result<void>> signIn(AuthData data);

  Future<Result<void>> signUp(RegData data);

  Future<Result<void>> resetPass(ResetPassData data);

  Future<Result<void>> signOut();

  Future<Result<void>> deleteAccount();
}

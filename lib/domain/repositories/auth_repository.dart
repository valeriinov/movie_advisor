import '../entities/auth/auth_data.dart';
import '../entities/result.dart';

abstract interface class AuthRepository {
  Future<Result<void>> signIn(AuthData data);

  Future<Result<void>> signOut();

  Future<Result<void>> deleteAccount();
}

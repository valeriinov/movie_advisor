import '../../dto/auth/auth_data_dto.dart';

abstract interface class AuthRemoteDataSource {
  Future<void> signIn(AuthDataDto data);

  Future<void> signOut();

  Future<void> deleteAccount();
}

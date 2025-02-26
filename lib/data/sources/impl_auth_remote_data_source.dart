import '../dto/auth/auth_data_dto.dart';
import '../dto/auth/reg_data_dto.dart';
import '../dto/auth/reset_pass_data_dto.dart';
import '../dto/auth/user_data_dto.dart';
import '../network/services/auth_service.dart';
import '../repositories/auth/auth_remote_data_source.dart';

class ImplAuthRemoteDataSource implements AuthRemoteDataSource {
  final AuthService _service;

  ImplAuthRemoteDataSource({required AuthService service}) : _service = service;

  @override
  Stream<UserDataDto?> get userChanges => _service.userChanges;

  @override
  Future<UserDataDto?> getUser() async {
    return _service.getUser();
  }

  @override
  Future<void> signIn(AuthDataDto data) {
    return _service.signIn(data);
  }

  @override
  Future<void> signUp(RegDataDto data) {
    return _service.signUp(data);
  }

  @override
  Future<void> resetPass(ResetPassDataDto data) {
    return _service.resetPass(data);
  }

  @override
  Future<void> signOut() {
    return _service.signOut();
  }

  @override
  Future<void> deleteAccount() {
    return _service.deleteAccount();
  }
}

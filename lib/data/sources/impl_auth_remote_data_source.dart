import '../dto/auth/auth_data_dto.dart';
import '../network/services/auth_service.dart';
import '../repositories/auth/auth_remote_data_source.dart';

class ImplAuthRemoteDataSource implements AuthRemoteDataSource {
  final AuthService _service;

  ImplAuthRemoteDataSource({required AuthService service}) : _service = service;

  @override
  Future<void> signIn(AuthDataDto data) {
    return _service.signIn(data);
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

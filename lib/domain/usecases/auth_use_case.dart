import '../entities/auth/auth_data.dart';
import '../repositories/auth_repository.dart';

import '../entities/result.dart';

class AuthUseCase {
  final AuthRepository _repository;

  AuthUseCase({required AuthRepository repository}) : _repository = repository;

  Future<Result<void>> signIn(AuthData data) {
    return _repository.signIn(data);
  }

  Future<Result<void>> signOut() {
    return _repository.signOut();
  }

  Future<Result<void>> deleteAccount() {
    return _repository.deleteAccount();
  }
}

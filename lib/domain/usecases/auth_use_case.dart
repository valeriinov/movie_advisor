import '../entities/auth/auth_data.dart';
import '../entities/auth/delete_account_data.dart';
import '../entities/auth/reg_data.dart';
import '../entities/auth/reset_pass_data.dart';
import '../entities/auth/user_data.dart';
import '../entities/result.dart';
import '../repositories/auth_repository.dart';

class AuthUseCase {
  final AuthRepository _repository;

  AuthUseCase({required AuthRepository repository}) : _repository = repository;

  Stream<Result<UserData?>> get userChanges => _repository.userChanges;

  Future<Result<UserData?>> getUser() {
    return _repository.getUser();
  }

  Future<Result<void>> signIn(AuthData data) {
    return _repository.signIn(data);
  }

  Future<Result<void>> signUp(RegData data) {
    return _repository.signUp(data);
  }

  Future<Result<void>> resetPass(ResetPassData data) {
    return _repository.resetPass(data);
  }

  Future<Result<void>> signOut() {
    return _repository.signOut();
  }

  Future<Result<void>> deleteAccount(DeleteAccountData data) {
    return _repository.deleteAccount(data);
  }
}

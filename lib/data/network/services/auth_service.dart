import 'package:firebase_auth/firebase_auth.dart';

import '../../dto/auth/auth_data_dto.dart';
import '../../dto/auth/reg_data_dto.dart';
import '../../dto/auth/reset_pass_data_dto.dart';
import '../../dto/auth/user_data_dto.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  AuthService({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  Stream<UserDataDto?> get userChanges =>
      _firebaseAuth.userChanges().map((user) => user.toUserDataDto());

  Future<UserDataDto?> getUser() async {
    return _firebaseAuth.currentUser?.toUserDataDto();
  }

  Future<void> signIn(AuthDataDto dto) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: dto.email ?? '',
      password: dto.password ?? '',
    );
  }

  Future<void> signUp(RegDataDto dto) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: dto.email ?? '',
      password: dto.password ?? '',
    );
  }

  Future<void> resetPass(ResetPassDataDto data) {
    return _firebaseAuth.sendPasswordResetEmail(email: data.email ?? '');
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<void> deleteAccount() async {
    await _firebaseAuth.currentUser?.delete();
  }
}

extension _UserMapper on User? {
  UserDataDto? toUserDataDto() {
    return switch (this) {
      User user? => UserDataDto(id: user.uid, email: user.email),
      _ => null,
    };
  }
}

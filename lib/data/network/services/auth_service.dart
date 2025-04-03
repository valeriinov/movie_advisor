import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../dto/app_firebase_exception.dart';
import '../../dto/auth/auth_data_dto.dart';
import '../../dto/auth/delete_account_data_dto.dart';
import '../../dto/auth/reg_data_dto.dart';
import '../../dto/auth/reset_pass_data_dto.dart';
import '../../dto/auth/user_data_dto.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFunctions _firebaseFunctions;

  AuthService({
    required FirebaseAuth firebaseAuth,
    required FirebaseFunctions firebaseFunctions,
  }) : _firebaseAuth = firebaseAuth,
       _firebaseFunctions = firebaseFunctions;

  Stream<UserDataDto?> get userChanges =>
      _firebaseAuth.userChanges().map((user) => user.toUserDataDto());

  Future<UserDataDto?> getUser() async {
    return _firebaseAuth.currentUser?.toUserDataDto();
  }

  Future<void> signIn(AuthDataDto dto) async {
    return _execWithHandleError(
      () => _firebaseAuth.signInWithEmailAndPassword(
        email: dto.email ?? '',
        password: dto.password ?? '',
      ),
    );
  }

  Future<void> signUp(RegDataDto dto) async {
    return _execWithHandleError(
      () => _firebaseAuth.createUserWithEmailAndPassword(
        email: dto.email ?? '',
        password: dto.password ?? '',
      ),
    );
  }

  Future<void> resetPass(ResetPassDataDto data) {
    return _execWithHandleError(
      () => _firebaseAuth.sendPasswordResetEmail(email: data.email ?? ''),
    );
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  Future<void> deleteAccount(DeleteAccountDataDto data) async {
    return _execWithHandleError(() => _deleteAccount(data));
  }

  Future<void> _deleteAccount(DeleteAccountDataDto data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) {
      throw AppFirebaseException(error: Object(), message: 'unauthorized');
    }

    final uid = user.uid;
    final credential = EmailAuthProvider.credential(
      email: user.email ?? '',
      password: data.password ?? '',
    );

    await _deleteUserDataFromStorage(uid);
    await _deleteUser(user, credential);
  }

  Future<void> _deleteUser(User user, AuthCredential credential) async {
    await user.reauthenticateWithCredential(credential);
    await user.delete();
  }

  Future<void> _deleteUserDataFromStorage(String uid) async {
    await _firebaseFunctions.httpsCallable('deleteUserMedia').call({
      'uid': uid,
    });
  }

  Future<void> _execWithHandleError(Future<void> Function() action) async {
    try {
      await action();
    } on FirebaseException catch (e) {
      throw AppFirebaseException(error: e, message: e.code);
    }
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

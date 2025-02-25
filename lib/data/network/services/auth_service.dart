import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../dto/auth/auth_data_dto.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth;

  AuthService({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  // TODO: implement signIn
  Future<void> signIn(AuthDataDto dto) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: dto.login ?? '',
      password: dto.password ?? '',
    );
  }

  // TODO: implement signOut
  Future<void> signOut() async {
    await 1.seconds.delay();
  }

  // TODO: implement deleteAccount
  Future<void> deleteAccount() async {
    await 1.seconds.delay();
  }
}

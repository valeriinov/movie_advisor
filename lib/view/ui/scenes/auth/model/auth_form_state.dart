import 'package:class_namer_annotation/class_namer_annotation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/auth/auth_data.dart';

part 'auth_form_state.mapper.dart';

part 'auth_form_state.names.dart';

@ClassNamer()
@MappableClass()
class AuthFormState with AuthFormStateMappable {
  final String email;
  final String password;

  bool get isFilled => email.isNotBlank && password.isNotBlank;

  bool get hasUnsavedData => email.isNotBlank || password.isNotBlank;

  const AuthFormState({this.email = '', this.password = ''});

  static AuthFormStateNames get nameof => AuthFormStateNames._();

  factory AuthFormState.fromJson(Map<String, dynamic> json) =>
      AuthFormStateMapper.fromJson(json);
}

extension ToAuthDataMapper on AuthFormState {
  AuthData toAuthData() => AuthData(email: email, password: password);
}

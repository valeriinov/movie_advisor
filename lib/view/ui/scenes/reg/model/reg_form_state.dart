import 'package:class_namer_annotation/class_namer_annotation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/auth/reg_data.dart';

part 'reg_form_state.mapper.dart';

part 'reg_form_state.names.dart';

@ClassNamer()
@MappableClass()
class RegFormState with RegFormStateMappable {
  final String email;
  final String password;
  final String confirmPassword;

  bool get isFilled => email.isNotBlank && password.isNotBlank && confirmPassword.isNotBlank;

  const RegFormState({this.email = '', this.password = '', this.confirmPassword = ''});

  static RegFormStateNames get nameof => RegFormStateNames._();

  factory RegFormState.fromJson(Map<String, dynamic> json) =>
      RegFormStateMapper.fromJson(json);
}

extension ToRegDataMapper on RegFormState {
  RegData toRegData() => RegData(
    email: email,
    password: password,
  );
}
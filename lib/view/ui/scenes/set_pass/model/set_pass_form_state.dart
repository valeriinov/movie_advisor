import 'package:class_namer_annotation/class_namer_annotation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/auth/set_pass_data.dart';

part 'set_pass_form_state.mapper.dart';

part 'set_pass_form_state.names.dart';

@ClassNamer()
@MappableClass()
class SetPassFormState with SetPassFormStateMappable {
  final String password;
  final String confirmPassword;

  bool get isFilled => password.isNotBlank && confirmPassword.isNotBlank;

  bool get hasUnsavedData => password.isNotBlank || confirmPassword.isNotBlank;

  const SetPassFormState({this.password = '', this.confirmPassword = ''});

  static SetPassFormStateNames get nameof => SetPassFormStateNames._();

  factory SetPassFormState.fromJson(Map<String, dynamic> json) =>
      SetPassFormStateMapper.fromJson(json);
}

extension ToRegDataMapper on SetPassFormState {
  SetPassData toSetPassData(String oobCode) =>
      SetPassData(oobCode: oobCode, password: password);
}

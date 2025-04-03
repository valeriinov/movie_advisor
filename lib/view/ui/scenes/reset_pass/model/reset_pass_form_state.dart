import 'package:class_namer_annotation/class_namer_annotation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/auth/reset_pass_data.dart';

part 'reset_pass_form_state.mapper.dart';

part 'reset_pass_form_state.names.dart';

@ClassNamer()
@MappableClass()
class ResetPassFormState with ResetPassFormStateMappable {
  final String email;

  bool get isFilled => email.isNotBlank;

  bool get hasUnsavedData => email.isNotBlank;

  const ResetPassFormState({this.email = ''});

  static ResetPassFormStateNames get nameof => ResetPassFormStateNames._();

  factory ResetPassFormState.fromJson(Map<String, dynamic> json) =>
      ResetPassFormStateMapper.fromJson(json);
}

extension ToResetPassDataMapper on ResetPassFormState {
  ResetPassData toResetPassData() => ResetPassData(email: email);
}

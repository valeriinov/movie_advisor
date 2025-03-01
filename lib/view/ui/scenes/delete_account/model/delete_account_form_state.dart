import 'package:class_namer_annotation/class_namer_annotation.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/auth/delete_account_data.dart';

part 'delete_account_form_state.mapper.dart';

part 'delete_account_form_state.names.dart';

@ClassNamer()
@MappableClass()
class DeleteAccountFormState with DeleteAccountFormStateMappable {
  final String password;

  bool get isFilled => password.isNotBlank;

  const DeleteAccountFormState({this.password = ''});

  static DeleteAccountFormStateNames get nameof =>
      DeleteAccountFormStateNames._();

  factory DeleteAccountFormState.fromJson(Map<String, dynamic> json) =>
      DeleteAccountFormStateMapper.fromJson(json);
}

extension ToResetPassDataMapper on DeleteAccountFormState {
  DeleteAccountData toDeleteAccountData() =>
      DeleteAccountData(password: password);
}

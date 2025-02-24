import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../model/auth_form_state.dart';
import 'auth_submit_button.dart';

class AuthFormContent extends StatelessWidget {
  final void Function(AuthFormState) updateFormState;

  const AuthFormContent({super.key, required this.updateFormState});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final emailFieldName = AuthFormState.nameof.fieldEmail;
    final passFieldName = AuthFormState.nameof.fieldPassword;

    return FormAutoValidateBuilder<FormBuilderState>(
      builder: (context, formKey, autoValidate, setAutoValidate) {
        return FormBuilder(
          key: formKey,
          autovalidateMode:
              autoValidate
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
          onChanged: () => _updateFormState(formKey),
          child: SizedBox(
            width: double.infinity,
            child: KeyboardActionsWrapper(
              fieldNames: [emailFieldName, passFieldName],
              builder:
                  (context, nodesDict) => ColumnSeparated(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InputField.email(
                        name: emailFieldName,
                        focusNode: nodesDict[emailFieldName],
                      ),
                      InputField.pass(
                        name: passFieldName,
                        focusNode: nodesDict[passFieldName],
                        textInputAction: TextInputAction.done,
                      ),
                      AuthSubmitButton(
                        formKey: formKey,
                        setAutoValidate: setAutoValidate,
                      ),
                    ],
                    separatorBuilder: (_, __) => dimens.spLarge.gapVert(),
                  ),
            ),
          ),
        );
      },
    );
  }

  void _updateFormState(GlobalKey<FormBuilderState> formKey) {
    final json = formKey.currentState?.instantValue;
    if (json == null) return;

    final formState = AuthFormState.fromJson(json);

    updateFormState(formState);
  }
}

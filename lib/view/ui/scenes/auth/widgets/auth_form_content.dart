import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../auth_view_model/auth_view_model.dart';
import '../model/auth_form_state.dart';
import 'account_management_buttons.dart';
import 'auth_submit_button.dart';

class AuthFormContent extends ConsumerWidget {
  final void Function(AuthFormState) updateFormState;
  final VoidCallback showExitDialog;

  const AuthFormContent({
    super.key,
    required this.updateFormState,
    required this.showExitDialog,
  });

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;
    final emailFieldName = AuthFormState.nameof.fieldEmail;
    final passFieldName = AuthFormState.nameof.fieldPassword;

    final vsp = ref.vspFromADProvider(authViewModelPr);

    final hasUnsavedData = vsp.selectWatch((s) => s.formState.hasUnsavedData);

    return SliverToBoxAdapter(
      child: FormAutoValidateBuilder<FormBuilderState>(
        builder: (context, formKey, autoValidate, setAutoValidate) {
          return FormBuilder(
            key: formKey,
            onPopInvokedWithResult: (didPop, result) {
              if (didPop) return;
              showExitDialog();
            },
            canPop: !hasUnsavedData,
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
                    (context, nodesDict) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InputField.email(
                          name: emailFieldName,
                          focusNode: nodesDict[emailFieldName],
                        ),
                        dimens.spLarge.gapVert(),
                        InputField.pass(
                          name: passFieldName,
                          focusNode: nodesDict[passFieldName],
                          textInputAction: TextInputAction.done,
                        ),
                        dimens.spSmall.gapVert(),
                        AccountManagementButtons(),
                        dimens.spSmall.gapVert(),
                        AuthSubmitButton(
                          formKey: formKey,
                          setAutoValidate: setAutoValidate,
                        ),
                      ],
                    ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _updateFormState(GlobalKey<FormBuilderState> formKey) {
    final json = formKey.currentState?.instantValue;
    if (json == null) return;

    final formState = AuthFormState.fromJson(json);

    updateFormState(formState);
  }
}

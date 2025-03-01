import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/widgets/form_widgets/form_auto_validate_builder.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../../auth/model/auth_form_state.dart';
import '../model/reset_pass_form_state.dart';
import 'reset_pass_submit_button.dart';

class ResetPassFormContent extends StatelessWidget {
  final void Function(ResetPassFormState) updateFormState;

  const ResetPassFormContent({super.key, required this.updateFormState});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final emailFieldName = AuthFormState.nameof.fieldEmail;

    return SliverToBoxAdapter(
      child: FormAutoValidateBuilder<FormBuilderState>(
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
                fieldNames: [emailFieldName],
                builder:
                    (context, nodesDict) => Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: dimens.spLarge,
                      children: [
                        InputField.email(
                          name: emailFieldName,
                          focusNode: nodesDict[emailFieldName],
                          textInputAction: TextInputAction.done,
                        ),
                        ResetPassSubmitButton(
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

    final formState = ResetPassFormState.fromJson(json);

    updateFormState(formState);
  }
}

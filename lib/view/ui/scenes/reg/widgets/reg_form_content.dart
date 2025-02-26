import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';
import 'package:flutter_utils/widgets/form_widgets/form_auto_validate_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../model/reg_form_state.dart';
import '../reg_view_model/reg_view_model.dart';
import 'reg_submit_button.dart';

class RegFormContent extends ConsumerWidget {
  final void Function(RegFormState) updateFormState;

  const RegFormContent({super.key, required this.updateFormState});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;
    final emailFieldName = RegFormState.nameof.fieldEmail;
    final passFieldName = RegFormState.nameof.fieldPassword;
    final confirmPassFieldName = RegFormState.nameof.fieldConfirmPassword;

    final vsp = ref.vspFromADProvider(regViewModelPr);

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
                fieldNames: [
                  emailFieldName,
                  passFieldName,
                  confirmPassFieldName,
                ],
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
                        ),
                        dimens.spLarge.gapVert(),
                        InputField.confirmPass(
                          name: confirmPassFieldName,
                          focusNode: nodesDict[confirmPassFieldName],
                          textInputAction: TextInputAction.done,
                          getPassValue:
                              () => vsp.selectRead((s) => s.formState.password),
                        ),
                        dimens.spLarge.gapVert(),
                        RegSubmitButton(
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

    final formState = RegFormState.fromJson(json);

    updateFormState(formState);
  }
}

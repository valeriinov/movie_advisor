import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/widgets/form_widgets/form_auto_validate_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../model/set_pass_form_state.dart';
import '../set_pass_view_model/set_pass_view_model.dart';
import 'set_pass_submit_button.dart';

class SetPassFormContent extends ConsumerWidget {
  final String oobCode;
  final void Function(SetPassFormState) updateFormState;

  const SetPassFormContent({
    super.key,
    required this.oobCode,
    required this.updateFormState,
  });

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;
    final passFieldName = SetPassFormState.nameof.fieldPassword;
    final confirmPassFieldName = SetPassFormState.nameof.fieldConfirmPassword;

    final vsp = ref.vspFromNotifierPr(setPassViewModelPr(oobCode));

    return SliverToBoxAdapter(
      child: FormAutoValidateBuilder<FormBuilderState>(
        builder: (context, formKey, autoValidate, setAutoValidate) {
          return FormBuilder(
            key: formKey,
            autovalidateMode: autoValidate
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            onChanged: () => _updateFormState(formKey),
            child: SizedBox(
              width: double.infinity,
              child: KeyboardActionsWrapper(
                fieldNames: [passFieldName, confirmPassFieldName],
                builder: (context, nodesDict) => Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: dimens.spLarge,
                  children: [
                    InputField.pass(
                      name: passFieldName,
                      focusNode: nodesDict[passFieldName],
                    ),
                    InputField.confirmPass(
                      name: confirmPassFieldName,
                      focusNode: nodesDict[confirmPassFieldName],
                      textInputAction: TextInputAction.done,
                      getPassValue: () =>
                          vsp.selectRead((s) => s.formState.password),
                    ),
                    SetPassSubmitButton(
                      oobCode: oobCode,
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

    final formState = SetPassFormState.fromJson(json);

    updateFormState(formState);
  }
}

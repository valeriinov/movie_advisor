import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/widgets/form_widgets/form_auto_validate_builder.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/form/input_field.dart';
import '../../../widgets/form/keyboard_actions_wrapper.dart';
import '../model/delete_account_form_state.dart';
import 'delete_account_submit_button.dart';

class DeleteAccountFormContent extends StatelessWidget {
  final void Function(DeleteAccountFormState) updateFormState;

  const DeleteAccountFormContent({super.key, required this.updateFormState});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final passwordFieldName = DeleteAccountFormState.nameof.fieldPassword;

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
                fieldNames: [passwordFieldName],
                builder:
                    (context, nodesDict) => Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: dimens.spLarge,
                      children: [
                        InputField.pass(
                          name: passwordFieldName,
                          focusNode: nodesDict[passwordFieldName],
                          hintText: LocaleKeys.deleteAccountPassLabel.tr(),
                          textInputAction: TextInputAction.done,
                        ),
                        DeleteAccountSubmitButton(
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

    final formState = DeleteAccountFormState.fromJson(json);

    updateFormState(formState);
  }
}

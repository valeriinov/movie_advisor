import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/ext/flutter_ext/context/focus_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/submit_button_with_loader.dart';
import '../reg_view_model/reg_view_model.dart';

class RegSubmitButton extends ConsumerWidget {
  final GlobalKey<FormBuilderState> formKey;
  final void Function(bool) setAutoValidate;

  const RegSubmitButton({
    super.key,
    required this.formKey,
    required this.setAutoValidate,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(regViewModelPr);

    final formState = vsp.selectWatch((s) => s.formState);

    return SubmitButtonWithLoader(
      isLoading: vsp.isLoading,
      onPressed:
          formState.isFilled
              ? () => _onSubmit(context, vsp, formKey, setAutoValidate)
              : null,
      child: Text(LocaleKeys.signUpButton.tr()),
    );
  }

  void _onSubmit(
    BuildContext context,
    RegVSP vsp,
    GlobalKey<FormBuilderState> formKey,
    void Function(bool) setAutoValidate,
  ) {
    final isValid =
        formKey.currentState?.saveAndValidate(focusOnInvalid: false) ?? false;

    if (!isValid) {
      setAutoValidate(true);
      return;
    }

    context.resetFocus();

    vsp.viewModel.signUp();
  }
}

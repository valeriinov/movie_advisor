import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/submit_button_with_loader.dart';
import '../reset_pass_view_model/reset_pass_view_model.dart';

class ResetPassSubmitButton extends ConsumerWidget {
  final GlobalKey<FormBuilderState> formKey;
  final void Function(bool) setAutoValidate;

  const ResetPassSubmitButton({
    super.key,
    required this.formKey,
    required this.setAutoValidate,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(resetPassViewModelPr);

    final formState = vsp.selectWatch((s) => s.formState);

    return SubmitButtonWithLoader(
      isLoading: vsp.isLoading,
      onPressed: formState.isFilled
          ? () => _onSubmit(context, vsp, formKey, setAutoValidate)
          : null,
      child: Text(LocaleKeys.resetPassButton.tr()),
    );
  }

  void _onSubmit(
    BuildContext context,
    ResetPassVSP vsp,
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

    vsp.viewModel.resetPass();
  }
}

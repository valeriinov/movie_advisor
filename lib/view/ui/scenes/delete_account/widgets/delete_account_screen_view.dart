import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/form/widgets/keyboard_opened_bottom_gap.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../delete_account_view_model/delete_account_state.dart';
import '../delete_account_view_model/delete_account_view_model.dart';
import 'delete_account_desc.dart';
import 'delete_account_form_content.dart';

class DeleteAccountScreenView extends ConsumerWidget {
  const DeleteAccountScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(deleteAccountViewModelPr);

    vsp.handleState(
      listener:
          (prev, next) => _handleStatus(prev, next, context: context, ref: ref),
    );

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.deleteAccountScreenTitle.tr())),
      body: Padding(
        padding: dimens.padHorPrimIns,
        child: NoAlwaysScrollWrapper(
          child: CustomScrollView(
            slivers: [
              SliverPadding(padding: dimens.padTopPrimIns),
              DeleteAccountDesc(),
              DeleteAccountFormContent(
                updateFormState: vsp.viewModel.updateFormState,
              ),
              SliverPadding(padding: dimens.padBotPrimIns),
              KeyboardOpenedBottomGap(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleStatus(
    DeleteAccountState? prev,
    DeleteAccountState next, {
    required BuildContext context,
    required WidgetRef ref,
  }) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    ref.baseStatusHandler.handleStatus(
      prev,
      next,
      handleLoadingState: () => false,
    );

    if (next.status is DeleteAccountSuccessStatus) {
      final toastManager = ref.toastManager;

      toastManager.showInfoToast(LocaleKeys.deleteAccountSuccessToast.tr());

      context.pop();
    }
  }
}

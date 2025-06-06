import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
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
import '../auth_view_model/auth_state.dart';
import '../auth_view_model/auth_view_model.dart';
import 'auth_form_content.dart';

class AuthScreenView extends ConsumerWidget {
  const AuthScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(authViewModelPr);

    vsp.handleState(
      listener: (prev, next) =>
          _handleStatus(prev, next, context: context, ref: ref),
    );

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.signInScreenTitle.tr())),
      body: Padding(
        padding: dimens.padHorPrimIns,
        child: NoAlwaysScrollWrapper(
          child: CustomScrollView(
            slivers: [
              SliverPadding(padding: dimens.padTopPrim.insTop()),
              AuthFormContent(updateFormState: vsp.viewModel.updateFormState),
              SliverPadding(padding: dimens.padBotPrim.insBottom()),
              KeyboardOpenedBottomGap(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleStatus(
    AuthState? prev,
    AuthState next, {
    required BuildContext context,
    required WidgetRef ref,
  }) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    ref.baseStatusHandler.handleStatus(
      prev,
      next,
      handleLoadingState: () => false,
    );

    if (next.status is AuthSuccessStatus) {
      final toastManager = ref.toastManager;

      toastManager.showSuccessToast(LocaleKeys.signInSuccessToast.tr());

      context.pop();
    }
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/more_routes.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../reg_view_model/reg_state.dart';
import '../reg_view_model/reg_view_model.dart';
import 'reg_form_content.dart';

class RegScreenView extends ConsumerWidget {
  const RegScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(regViewModelPr);

    vsp.handleState(
      listener:
          (prev, next) => _handleStatus(prev, next, context: context, ref: ref),
    );

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.regScreenTitle.tr())),
      body: Padding(
        padding: dimens.padHorPrimIns,
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: dimens.padTopPrim.insTop()),
            RegFormContent(updateFormState: vsp.viewModel.updateFormState),
            SliverPadding(padding: dimens.padBotPrim.insBottom()),
          ],
        ),
      ),
    );
  }

  void _handleStatus(
    RegState? prev,
    RegState next, {
    required BuildContext context,
    required WidgetRef ref,
  }) {
    ref.baseStatusHandler.handleStatus(prev, next);

    if (next.isUpdate(prev, (s) => s?.status) &&
        next.status is RegSuccessStatus) {
      final toastManager = ref.toastManager;

      toastManager.showSuccessToast(LocaleKeys.createAccountSuccessToast.tr());

      MoreRoute().go(context);
    }
  }
}

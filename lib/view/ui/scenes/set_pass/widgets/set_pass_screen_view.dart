import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/router_api_context_ext.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/more_routes.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/form/widgets/keyboard_opened_bottom_gap.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../set_pass_view_model/set_pass_state.dart';
import '../set_pass_view_model/set_pass_view_model.dart';
import 'set_pass_form_content.dart';

class SetPassScreenView extends ConsumerWidget {
  final String oobCode;

  const SetPassScreenView({super.key, required this.oobCode});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(setPassViewModelPr(oobCode));

    vsp.handleState(
      listener: (prev, next) =>
          _handleStatus(prev, next, context: context, ref: ref),
    );

    return Scaffold(
      appBar: MainAppBar(
        title: Text(LocaleKeys.setPassScreenTitle.tr()),
        leading: BackButton(onPressed: context.goBackOrHome),
      ),
      body: Padding(
        padding: dimens.padHorPrimIns,
        child: NoAlwaysScrollWrapper(
          child: CustomScrollView(
            slivers: [
              SliverPadding(padding: dimens.padTopPrim.insTop()),
              SetPassFormContent(
                oobCode: oobCode,
                updateFormState: vsp.viewModel.updateFormState,
              ),
              SliverPadding(padding: dimens.padBotPrim.insBottom()),
              KeyboardOpenedBottomGap(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleStatus(
    SetPassState? prev,
    SetPassState next, {
    required BuildContext context,
    required WidgetRef ref,
  }) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    ref.baseStatusHandler.handleStatus(
      prev,
      next,
      handleLoadingState: () => false,
    );

    if (next.isUpdate(prev, (s) => s?.status) &&
        next.status is SetPassSuccessStatus) {
      final toastManager = ref.toastManager;

      toastManager.showSuccessToast(LocaleKeys.setPassSuccessToast.tr());

      AuthRoute().go(context);
    }
  }
}

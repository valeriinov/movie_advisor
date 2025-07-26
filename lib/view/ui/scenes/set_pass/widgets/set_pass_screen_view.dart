import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/form/widgets/keyboard_opened_bottom_gap.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../set_pass_view_model/set_pass_view_model.dart';
import 'set_pass_form_content.dart';

class SetPassScreenView extends ConsumerWidget {
  final String oobCode;

  const SetPassScreenView({super.key, required this.oobCode});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADFProvider(setPassViewModelPr(oobCode));

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(prev, next);
      },
    );

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.setPassScreenTitle.tr())),
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
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../delete_account_view_model/delete_account_view_model.dart';
import 'delete_account_desc.dart';

class DeleteAccountScreenView extends ConsumerWidget {
  const DeleteAccountScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(deleteAccountViewModelPr);

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(prev, next);
      },
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
              SliverPadding(padding: dimens.padBotPrimIns),
            ],
          ),
        ),
      ),
    );
  }
}

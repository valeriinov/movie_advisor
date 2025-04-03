import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/dialogs/question_dialog.dart';
import '../more_view_model/more_view_model.dart';
import 'more_app_bar.dart';
import 'more_screen_content.dart';

class MoreScreenView extends ConsumerWidget {
  const MoreScreenView({super.key});

  @override
  Widget build(context, ref) {
    final durations = context.baseDurations;

    final vsp = ref.vspFromADProvider(moreViewModelPr);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isLoaderVisible = isLoading && !isInitialized;

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => isInitialized,
        );
      },
    );

    final user = vsp.selectWatch((s) => s.user);

    return Scaffold(
      appBar: MoreAppBar(),
      body: AnimatedSwitcher(
        duration: durations.animSwitchPrim,
        child:
            isLoaderVisible
                ? Center(child: CircularProgressIndicator())
                : MoreScreenContent(
                  user: user,
                  onRefresh:
                      !isLoading
                          ? () =>
                              vsp.viewModel.loadInitialData(showLoader: false)
                          : null,
                  onSignOut: () => _showSignOutDialog(context, vsp),
                ),
      ),
    );
  }

  void _showSignOutDialog(BuildContext context, MoreVSP vsp) {
    showDialog(
      context: context,
      builder:
          (_) => QuestionDialog(
            contentText: LocaleKeys.signOutDialog.tr(),
            onOkButtonPressed: vsp.viewModel.signOut,
          ),
    );
  }
}

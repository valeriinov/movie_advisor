import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';

class DeleteAccountButton extends StatelessWidget {
  final UserData? user;
  final VoidCallback? onDeleteAccount;

  const DeleteAccountButton({super.key, this.user, this.onDeleteAccount});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final dimens = context.baseDimens;
    final durations = context.baseDurations;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: user != null
          ? SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: colors.deleteAccountBtn,
                    ),
                    onPressed: onDeleteAccount,
                    child: Text(LocaleKeys.deleteAccountButton.tr()),
                  ),
                  dimens.padBotPrim.gapVert(),
                ],
              ),
            )
          : SliverPadding(padding: dimens.padBotPrimIns),
    );
  }
}

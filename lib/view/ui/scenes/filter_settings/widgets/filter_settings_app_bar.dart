import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';

class FilterSettingsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback? onReset;
  final VoidCallback? onSave;

  const FilterSettingsAppBar({super.key, this.onReset, this.onSave});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Row(
          children: [
            _buildResetButton(context),
            const Spacer(),
            _buildSaveButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildResetButton(BuildContext context) {
    final styles = context.baseComponentsStyles;

    return onReset != null
        ? TextButton(
            onPressed: onReset,
            child: Text(
              LocaleKeys.filterSettingsResetBtn.tr(),
              style: styles.filterSetActBtnTextStyle,
            ),
          )
        : SizedBox();
  }

  Widget _buildSaveButton(BuildContext context) {
    final durations = context.baseDurations;
    final styles = context.baseComponentsStyles;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: onSave != null
          ? TextButton(
              onPressed: onSave,
              child: Text(
                LocaleKeys.filterSettingsApplyBtn.tr(),
                style: styles.filterSetActBtnTextStyle,
              ),
            )
          : TextButton(
              onPressed: context.pop,
              child: Text(
                LocaleKeys.filterSettingsCloseBtn.tr(),
                style: styles.filterSetActBtnTextStyle,
              ),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

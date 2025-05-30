import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../common/app_locales.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/bottom_sheet/blurred_bottom_sheet.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../../../widgets/language_bottom_sheet.dart';

class SettingsScreenView extends StatelessWidget {
  const SettingsScreenView({super.key});

  @override
  Widget build(context) {
    final dimens = context.baseDimens;

    return Scaffold(
      appBar: MainAppBar(title: Text(LocaleKeys.settingsScreenTitle.tr())),
      body: NoAlwaysScrollWrapper(
        child: CustomScrollView(
          slivers: [
            SliverPadding(padding: dimens.padTopPrimIns),
            SliverList.list(
              children: [
                Divider(),
                _buildTile(
                  title: LocaleKeys.settingsLanguageTitle.tr(),
                  subtitle: _getCurrentLanguageDesc(context),
                  onTap: () => _onLangSettingsTap(context),
                ),
                Divider(),
              ],
            ),
            SliverPadding(padding: dimens.padBotPrimIns),
          ],
        ),
      ),
    );
  }

  Widget _buildTile({
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;

        return ListTile(
          minTileHeight: 0,
          contentPadding: dimens.padHorPrimIns,
          minVerticalPadding: 0,
          title: Text(title),
          subtitle: Text(subtitle).paddingOnly(top: 8, bottom: 8),
          trailing: _buildArrow(),
          onTap: onTap,
        );
      },
    );
  }

  String _getCurrentLanguageDesc(BuildContext context) {
    return switch (context.locale.languageCode) {
      final code when code == AppLocales.uk.name => LocaleKeys.ukrainian.tr(),
      _ => LocaleKeys.english.tr(),
    };
  }

  Widget _buildArrow() {
    return Builder(
      builder: (context) {
        final colors = context.baseColors;

        return Icon(
          Icons.keyboard_arrow_right_rounded,
          color: colors.listTilePrimTitle,
        );
      },
    );
  }

  void _onLangSettingsTap(BuildContext context) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: context,
      useRootNavigator: true,
      child: LanguageBottomSheet(),
    );
  }
}

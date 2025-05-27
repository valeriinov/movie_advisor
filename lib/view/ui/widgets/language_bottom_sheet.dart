import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/app_locales.dart';
import '../base/refresh_view_model/refresh_view_model.dart';
import '../base/view_model/ext/vm_state_provider_creator.dart';
import '../resources/base_theme/components/base_components_styles_ext.dart';
import '../resources/base_theme/dimens/base_dimens_ext.dart';
import '../resources/locale_keys.g.dart';
import 'bottom_sheet/bottom_sheet_close_button.dart';
import 'bottom_sheet/bottom_sheet_title.dart';

class LanguageBottomSheet extends ConsumerWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final refreshVsp = ref.vspFromADProvider(refreshViewModelPr);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomSheetCloseButton(),
        BottomSheetTitle(title: LocaleKeys.settingsLanguageTitle.tr()),
        _buildContentModeMenu(refreshVsp),
        dimens.padBotPrim.gapVert(),
      ],
    );
  }

  Widget _buildContentModeMenu(RefreshVSP vsp) {
    return Builder(
      builder: (context) {
        final styles = context.baseComponentsStyles;
        final titleStyle = styles.listTileSecTitleTextStyle;
        final selectedTitleStyle = styles.listTileSecTitleTextStyleSelect;

        final currentLocale = context.locale;
        final currentLangCode = currentLocale.languageCode;
        final isEn = _isSelected(currentLangCode, AppLocales.en.locale);
        final isUk = _isSelected(currentLangCode, AppLocales.uk.locale);

        return Material(
          type: MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RadioListTile<Locale>(
                title: Text(
                  LocaleKeys.english.tr(),
                  style: isEn ? selectedTitleStyle : titleStyle,
                ),
                value: AppLocales.en.locale,
                groupValue: currentLocale,
                selected: isEn,
                onChanged: (locale) =>
                    _onLanguageSelected(context, locale, vsp),
              ),
              RadioListTile<Locale>(
                title: Text(
                  LocaleKeys.ukrainian.tr(),
                  style: isUk ? selectedTitleStyle : titleStyle,
                ),
                value: AppLocales.uk.locale,
                groupValue: currentLocale,
                selected: isUk,
                onChanged: (locale) =>
                    _onLanguageSelected(context, locale, vsp),
              ),
            ],
          ),
        );
      },
    );
  }

  void _onLanguageSelected(
    BuildContext context,
    Locale? locale,
    RefreshVSP vsp,
  ) {
    Navigator.of(context).pop();

    if (locale == null) return;

    context.setLocale(locale);
    vsp.viewModel.setLangUpdatedStatus();
  }

  bool _isSelected(String currentLangCode, Locale locale) {
    return currentLangCode == locale.languageCode;
  }
}

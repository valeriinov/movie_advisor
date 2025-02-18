import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../base/content_mode_view_model/content_mode.dart';
import '../resources/base_theme/components/base_components_styles_ext.dart';
import '../resources/base_theme/dimens/base_dimens_ext.dart';
import '../resources/locale_keys.g.dart';
import 'bottom_sheet_close_button.dart';

class FilterBottomSheet extends StatelessWidget {
  final ContentMode contentMode;
  final VoidCallback toggleContentMode;

  const FilterBottomSheet({
    super.key,
    required this.contentMode,
    required this.toggleContentMode,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomSheetCloseButton(),
        _buildTitle(LocaleKeys.contentTypeMenu.tr()),
        _buildContentModeMenu(),
        dimens.padBotPrim.gapVert()
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Builder(builder: (context) {
      final dimens = context.baseDimens;
      final styles = context.baseComponentsStyles;

      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: dimens.padHorSecIns,
            child: Text(
              title,
              style: styles.botSheetTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Divider()
        ],
      );
    });
  }

  Widget _buildContentModeMenu() {
    return Builder(builder: (context) {
      final styles = context.baseComponentsStyles;
      final titleStyle = styles.listTileSecTitleTextStyle;
      final selectedTitleStyle = styles.listTileSecTitleTextStyleSelect;

      return Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile<ContentMode>(
              title: Text(
                LocaleKeys.movie.tr(),
                style: contentMode.isMovies ? selectedTitleStyle : titleStyle,
              ),
              value: ContentMode.movies,
              groupValue: contentMode,
              selected: contentMode.isMovies,
              onChanged: (_) => toggleContentMode(),
            ),
            RadioListTile<ContentMode>(
              title: Text(
                LocaleKeys.series.tr(),
                style: contentMode.isSeries ? selectedTitleStyle : titleStyle,
              ),
              value: ContentMode.series,
              groupValue: contentMode,
              selected: contentMode.isSeries,
              onChanged: (_) => toggleContentMode(),
            ),
          ],
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';

import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';

class BottomSheetTitle extends StatelessWidget {
  final String title;

  const BottomSheetTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
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
        Divider(),
      ],
    );
  }
}

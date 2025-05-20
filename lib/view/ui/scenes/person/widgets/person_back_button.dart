import 'package:flutter/material.dart';
import 'package:flutter_utils/utils/theme_utils/widget_state_resolver.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';

class PersonBackButton extends StatelessWidget {
  const PersonBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Positioned(
      top: 0,
      left: 8,
      child: SafeArea(
        child: BackButton(
          color: colors.backBtnSecFg,
          style: ButtonStyle(
            backgroundColor: WidgetStateResolver(
              defaultValue: colors.backBtnSecBg,
            ),
          ),
        ),
      ),
    );
  }
}

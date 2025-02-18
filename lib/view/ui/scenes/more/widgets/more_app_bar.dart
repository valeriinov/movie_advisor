import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';

class MoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double _dividerHeight = 0.7;

  const MoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MainAppBar(title: Text(LocaleKeys.appName.tr())),
        Divider(
          height: _dividerHeight,
          thickness: _dividerHeight,
          color: colors.navBarDivider,
        )
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + _dividerHeight);
}

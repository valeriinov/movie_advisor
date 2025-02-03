import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../colors/base_colors_ext.dart';

part 'base_nav_bars_styles.dart';

part 'base_nav_bars_styles_ext.tailor.dart';

abstract final class BaseNavBarsStylesFactory {
  static BaseNavBarsStyles createNavBarsStyles(BaseColors colors) {
    return BaseNavBarsStyles(
      appBarPrimIconTheme:
          _BaseNavBarsStyles.appBarPrimIconTheme(colors.appBarPrimFg),
    );
  }
}

@TailorMixin()
class BaseNavBarsStyles extends ThemeExtension<BaseNavBarsStyles>
    with _$BaseNavBarsStylesTailorMixin {
  /// Primary IconTheme for the AppBar
  @override
  final IconThemeData appBarPrimIconTheme;

  BaseNavBarsStyles({
    required this.appBarPrimIconTheme,
  });
}

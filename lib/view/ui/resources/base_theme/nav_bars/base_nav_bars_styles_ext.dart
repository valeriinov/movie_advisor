import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_nav_bars_styles.dart';

part 'base_nav_bars_styles_ext.tailor.dart';

abstract final class BaseNavBarsStylesFactory {
  static BaseNavBarsStyles createNavBarsStyles(BaseColors colors) {
    return BaseNavBarsStyles(
      appBarPrimTitleTextStyle: _BaseNavBarsStyles.appBarPrimTitleTextStyle(),
      appBarSecTitleTextStyle: _BaseNavBarsStyles.appBarSecTitleTextStyle(),
      botNavBarLabelTextStyle: _BaseNavBarsStyles.botNavBarLabelTextStyle(),
      appBarPrimIconTheme:
          _BaseNavBarsStyles.appBarPrimIconTheme(colors.appBarPrimFg),
    );
  }
}

@TailorMixin()
class BaseNavBarsStyles extends ThemeExtension<BaseNavBarsStyles>
    with _$BaseNavBarsStylesTailorMixin {
  /// TextStyle for the primary title in the AppBar
  @override
  final TextStyle appBarPrimTitleTextStyle;

  /// TextStyle for the secondary title in the AppBar
  @override
  final TextStyle appBarSecTitleTextStyle;

  /// TextStyle for the BottomNavigationBar labels
  @override
  final TextStyle botNavBarLabelTextStyle;

  /// Primary IconTheme for the AppBar
  @override
  final IconThemeData appBarPrimIconTheme;

  BaseNavBarsStyles({
    required this.appBarPrimTitleTextStyle,
    required this.appBarSecTitleTextStyle,
    required this.botNavBarLabelTextStyle,
    required this.appBarPrimIconTheme,
  });
}

part of 'base_nav_bars_styles_ext.dart';

abstract final class _BaseNavBarsStyles {
  static TextStyle appBarTitleTextStyle() => TextStyle(
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle botNavBarLabelTextStyle() => TextStyle(
        fontFamily: AppFonts.roboto,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static IconThemeData appBarPrimIconTheme(Color? color) =>
      IconThemeData(color: color);
}

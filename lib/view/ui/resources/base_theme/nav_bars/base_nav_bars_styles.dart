part of 'base_nav_bars_styles_ext.dart';

abstract final class _BaseNavBarsStyles {
  static TextStyle appBarPrimTitleTextStyle() => TextStyle(
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  static TextStyle appBarSecTitleTextStyle() => TextStyle(
        fontFamily: AppFonts.openSans,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );

  static TextStyle botNavBarLabelTextStyle() => TextStyle(
        fontFamily: AppFonts.roboto,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static IconThemeData appBarPrimIconTheme(Color? color) =>
      IconThemeData(color: color);
}

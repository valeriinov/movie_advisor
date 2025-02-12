part of 'base_components_styles_ext.dart';

abstract final class _BaseComponentsStyles {
  static const double cardPrimBorderRadius = 12.0;

  static ShapeBorder cardPrimShape({Color? borderColor}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardPrimBorderRadius),
        side: borderColor != null
            ? BorderSide(color: borderColor)
            : BorderSide.none,
      );

  static TextStyle listTilePrimTitleTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle listTilePrimSubtTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle avatarPrimTextStyle(Color color) => TextStyle(color: color);

  // Poster and backdrop
  static const double posterBorderRadius = 16.0;
  static const double backdrBorderRadius = 16.0;

  static const Size posterSmallSize = Size(95, 120);
  static const Size posterMediumSize = Size(100, 146);
  static const Size posterLargeSize = Size(145, 210);

  // Media info card
  static TextStyle infoCardRatingTextStyle(Color color) => TextStyle(
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: color,
      );

  // Empty list
  static TextStyle emptyListTitleTextStyle(Color color) => TextStyle(
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: color,
      );

  static TextStyle emptyListSubtitleTextStyle(Color color) => TextStyle(
        fontFamily: AppFonts.montserrat,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        color: color,
      );
}

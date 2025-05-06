part of 'base_components_styles_ext.dart';

abstract final class _BaseComponentsStyles {
  static const double cardPrimBorderRadius = 12.0;

  static ShapeBorder cardPrimShape({Color? borderColor}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cardPrimBorderRadius),
        side:
            borderColor != null
                ? BorderSide(color: borderColor)
                : BorderSide.none,
      );

  static double horizontalTitleGap = 12;

  static TextStyle listTilePrimTitleTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
    color: color,
  );

  static TextStyle listTilePrimSubtTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: color,
  );

  static TextStyle listTileSecTitleTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: color,
  );

  static TextStyle listTileSecSubtTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: color,
  );

  static TextStyle listTileSecTitleTextStyleSelect(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: color,
  );

  static TextStyle listTileSecSubtTextStyleSelect(Color color) =>
      TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: color);

  static TextStyle avatarPrimTextStyle(Color color) => TextStyle(color: color);

  // Poster and backdrop
  static const double posterBorderRadius = 16.0;
  static const double backdrBorderRadius = 16.0;

  static const Size posterSmallSize = Size(83, 120);
  static const Size posterMediumSize = Size(101, 146);
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

  // Details
  static const double detailsPropsIconSize = 19.5;

  static TextStyle detailsPropsTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: color,
  );

  static TextStyle detailsPropsRateTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: color,
  );

  // Bottom sheet
  static const double botSheetBorderRadius = 28.0;
  static const double botSheetContPadding = 16.0;
  static const double botSheetMinHeight = 250;

  static const ShapeBorder botSheetShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(botSheetBorderRadius),
      topRight: Radius.circular(botSheetBorderRadius),
    ),
  );

  static TextStyle botSheetTitleTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: color,
  );

  // Slider
  static const double sliderThumbRadius = 16.0;
  static const double sliderTrackHeight = 12.0;

  static TextStyle sliderValTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: color,
  );

  static TextStyle filterTitleTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 22 / 16,
    color: color,
  );

  static TextStyle filterSubtTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: color,
  );
}

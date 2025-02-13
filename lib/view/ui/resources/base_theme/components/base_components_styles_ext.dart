import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_components_styles.dart';

part 'base_components_styles_ext.tailor.dart';

abstract final class BaseComponentsStylesFactory {
  static BaseComponentsStyles createComponentsStyles(BaseColors colors) {
    return BaseComponentsStyles(
      cardPrimBorderRadius: _BaseComponentsStyles.cardPrimBorderRadius,
      cardPrimShape: _BaseComponentsStyles.cardPrimShape(
        borderColor: colors.cardPrimBorder,
      ),
      listTilePrimTitleTextStyle:
          _BaseComponentsStyles.listTilePrimTitleTextStyle(
        colors.listTilePrimTitle,
      ),
      listTilePrimSubtTextStyle:
          _BaseComponentsStyles.listTilePrimSubtTextStyle(
        colors.listTilePrimSubtitle,
      ),
      avatarPrimTextStyle: _BaseComponentsStyles.avatarPrimTextStyle(
        colors.avatarPrimFg,
      ),
      posterBorderRadius: _BaseComponentsStyles.posterBorderRadius,
      backdrBorderRadius: _BaseComponentsStyles.backdrBorderRadius,
      posterSmallSize: _BaseComponentsStyles.posterSmallSize,
      posterMediumSize: _BaseComponentsStyles.posterMediumSize,
      posterLargeSize: _BaseComponentsStyles.posterLargeSize,
      infoCardRatingTextStyle: _BaseComponentsStyles.infoCardRatingTextStyle(
        colors.infoCardRating,
      ),
      emptyListTitleTextStyle: _BaseComponentsStyles.emptyListTitleTextStyle(
        colors.textThemePrim,
      ),
      emptyListSubtitleTextStyle: _BaseComponentsStyles.emptyListSubtitleTextStyle(
        colors.textThemeSec,
      ),
      detailsPropsTextStyle: _BaseComponentsStyles.detailsPropsTextStyle(
        colors.textThemeSec,
      ),
    );
  }
}

@TailorMixin()
class BaseComponentsStyles extends ThemeExtension<BaseComponentsStyles>
    with _$BaseComponentsStylesTailorMixin {
  /// Primary BorderRadius of the card
  @override
  final double cardPrimBorderRadius;

  /// Primary ShapeBorder of the card
  @override
  final ShapeBorder cardPrimShape;

  /// Primary TextStyle of the ListTile title.
  @override
  final TextStyle listTilePrimTitleTextStyle;

  /// Primary TextStyle of the ListTile subtitle.
  @override
  final TextStyle listTilePrimSubtTextStyle;

  /// Primary TextStyle of the avatar.
  @override
  final TextStyle avatarPrimTextStyle;

  /// BorderRadius of the poster.
  @override
  final double posterBorderRadius;

  /// BorderRadius of the backdrop.
  @override
  final double backdrBorderRadius;

  /// Size of the small poster.
  @override
  final Size posterSmallSize;

  /// Size of the medium poster.
  @override
  final Size posterMediumSize;

  /// Size of the large poster.
  @override
  final Size posterLargeSize;

  /// TextStyle of the rating in the info card.
  @override
  final TextStyle infoCardRatingTextStyle;

  /// TextStyle of the title in the empty list.
  @override
  final TextStyle emptyListTitleTextStyle;

  /// TextStyle of the subtitle in the empty list.
  @override
  final TextStyle emptyListSubtitleTextStyle;

  /// TextStyle of the details properties.
  @override
  final TextStyle detailsPropsTextStyle;

  BaseComponentsStyles({
    required this.cardPrimBorderRadius,
    required this.cardPrimShape,
    required this.listTilePrimTitleTextStyle,
    required this.listTilePrimSubtTextStyle,
    required this.avatarPrimTextStyle,
    required this.posterBorderRadius,
    required this.backdrBorderRadius,
    required this.posterSmallSize,
    required this.posterMediumSize,
    required this.posterLargeSize,
    required this.infoCardRatingTextStyle,
    required this.emptyListTitleTextStyle,
    required this.emptyListSubtitleTextStyle,
    required this.detailsPropsTextStyle,
  });
}

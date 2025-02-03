import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

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

  BaseComponentsStyles({
    required this.cardPrimBorderRadius,
    required this.cardPrimShape,
    required this.listTilePrimTitleTextStyle,
    required this.listTilePrimSubtTextStyle,
    required this.avatarPrimTextStyle,
  });
}

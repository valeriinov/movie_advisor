// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_components_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseComponentsStylesTailorMixin
    on ThemeExtension<BaseComponentsStyles> {
  double get cardPrimBorderRadius;
  ShapeBorder get cardPrimShape;
  TextStyle get listTilePrimTitleTextStyle;
  TextStyle get listTilePrimSubtTextStyle;
  TextStyle get avatarPrimTextStyle;

  @override
  BaseComponentsStyles copyWith({
    double? cardPrimBorderRadius,
    ShapeBorder? cardPrimShape,
    TextStyle? listTilePrimTitleTextStyle,
    TextStyle? listTilePrimSubtTextStyle,
    TextStyle? avatarPrimTextStyle,
  }) {
    return BaseComponentsStyles(
      cardPrimBorderRadius: cardPrimBorderRadius ?? this.cardPrimBorderRadius,
      cardPrimShape: cardPrimShape ?? this.cardPrimShape,
      listTilePrimTitleTextStyle:
          listTilePrimTitleTextStyle ?? this.listTilePrimTitleTextStyle,
      listTilePrimSubtTextStyle:
          listTilePrimSubtTextStyle ?? this.listTilePrimSubtTextStyle,
      avatarPrimTextStyle: avatarPrimTextStyle ?? this.avatarPrimTextStyle,
    );
  }

  @override
  BaseComponentsStyles lerp(
      covariant ThemeExtension<BaseComponentsStyles>? other, double t) {
    if (other is! BaseComponentsStyles) return this as BaseComponentsStyles;
    return BaseComponentsStyles(
      cardPrimBorderRadius:
          t < 0.5 ? cardPrimBorderRadius : other.cardPrimBorderRadius,
      cardPrimShape: t < 0.5 ? cardPrimShape : other.cardPrimShape,
      listTilePrimTitleTextStyle: TextStyle.lerp(
          listTilePrimTitleTextStyle, other.listTilePrimTitleTextStyle, t)!,
      listTilePrimSubtTextStyle: TextStyle.lerp(
          listTilePrimSubtTextStyle, other.listTilePrimSubtTextStyle, t)!,
      avatarPrimTextStyle:
          TextStyle.lerp(avatarPrimTextStyle, other.avatarPrimTextStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseComponentsStyles &&
            const DeepCollectionEquality()
                .equals(cardPrimBorderRadius, other.cardPrimBorderRadius) &&
            const DeepCollectionEquality()
                .equals(cardPrimShape, other.cardPrimShape) &&
            const DeepCollectionEquality().equals(
                listTilePrimTitleTextStyle, other.listTilePrimTitleTextStyle) &&
            const DeepCollectionEquality().equals(
                listTilePrimSubtTextStyle, other.listTilePrimSubtTextStyle) &&
            const DeepCollectionEquality()
                .equals(avatarPrimTextStyle, other.avatarPrimTextStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(cardPrimBorderRadius),
      const DeepCollectionEquality().hash(cardPrimShape),
      const DeepCollectionEquality().hash(listTilePrimTitleTextStyle),
      const DeepCollectionEquality().hash(listTilePrimSubtTextStyle),
      const DeepCollectionEquality().hash(avatarPrimTextStyle),
    );
  }
}

extension BaseComponentsStylesBuildContext on BuildContext {
  BaseComponentsStyles get baseComponentsStyles =>
      Theme.of(this).extension<BaseComponentsStyles>()!;
}

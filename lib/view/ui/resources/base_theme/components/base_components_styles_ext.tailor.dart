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
  double get posterBorderRadius;
  double get backdrBorderRadius;
  Size get posterSmallSize;
  Size get posterMediumSize;
  Size get posterLargeSize;
  TextStyle get infoCardRatingTextStyle;

  @override
  BaseComponentsStyles copyWith({
    double? cardPrimBorderRadius,
    ShapeBorder? cardPrimShape,
    TextStyle? listTilePrimTitleTextStyle,
    TextStyle? listTilePrimSubtTextStyle,
    TextStyle? avatarPrimTextStyle,
    double? posterBorderRadius,
    double? backdrBorderRadius,
    Size? posterSmallSize,
    Size? posterMediumSize,
    Size? posterLargeSize,
    TextStyle? infoCardRatingTextStyle,
  }) {
    return BaseComponentsStyles(
      cardPrimBorderRadius: cardPrimBorderRadius ?? this.cardPrimBorderRadius,
      cardPrimShape: cardPrimShape ?? this.cardPrimShape,
      listTilePrimTitleTextStyle:
          listTilePrimTitleTextStyle ?? this.listTilePrimTitleTextStyle,
      listTilePrimSubtTextStyle:
          listTilePrimSubtTextStyle ?? this.listTilePrimSubtTextStyle,
      avatarPrimTextStyle: avatarPrimTextStyle ?? this.avatarPrimTextStyle,
      posterBorderRadius: posterBorderRadius ?? this.posterBorderRadius,
      backdrBorderRadius: backdrBorderRadius ?? this.backdrBorderRadius,
      posterSmallSize: posterSmallSize ?? this.posterSmallSize,
      posterMediumSize: posterMediumSize ?? this.posterMediumSize,
      posterLargeSize: posterLargeSize ?? this.posterLargeSize,
      infoCardRatingTextStyle:
          infoCardRatingTextStyle ?? this.infoCardRatingTextStyle,
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
      posterBorderRadius:
          t < 0.5 ? posterBorderRadius : other.posterBorderRadius,
      backdrBorderRadius:
          t < 0.5 ? backdrBorderRadius : other.backdrBorderRadius,
      posterSmallSize: t < 0.5 ? posterSmallSize : other.posterSmallSize,
      posterMediumSize: t < 0.5 ? posterMediumSize : other.posterMediumSize,
      posterLargeSize: t < 0.5 ? posterLargeSize : other.posterLargeSize,
      infoCardRatingTextStyle: TextStyle.lerp(
          infoCardRatingTextStyle, other.infoCardRatingTextStyle, t)!,
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
                .equals(avatarPrimTextStyle, other.avatarPrimTextStyle) &&
            const DeepCollectionEquality()
                .equals(posterBorderRadius, other.posterBorderRadius) &&
            const DeepCollectionEquality()
                .equals(backdrBorderRadius, other.backdrBorderRadius) &&
            const DeepCollectionEquality()
                .equals(posterSmallSize, other.posterSmallSize) &&
            const DeepCollectionEquality()
                .equals(posterMediumSize, other.posterMediumSize) &&
            const DeepCollectionEquality()
                .equals(posterLargeSize, other.posterLargeSize) &&
            const DeepCollectionEquality().equals(
                infoCardRatingTextStyle, other.infoCardRatingTextStyle));
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
      const DeepCollectionEquality().hash(posterBorderRadius),
      const DeepCollectionEquality().hash(backdrBorderRadius),
      const DeepCollectionEquality().hash(posterSmallSize),
      const DeepCollectionEquality().hash(posterMediumSize),
      const DeepCollectionEquality().hash(posterLargeSize),
      const DeepCollectionEquality().hash(infoCardRatingTextStyle),
    );
  }
}

extension BaseComponentsStylesBuildContext on BuildContext {
  BaseComponentsStyles get baseComponentsStyles =>
      Theme.of(this).extension<BaseComponentsStyles>()!;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_buttons_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseButtonStylesTailorMixin on ThemeExtension<BaseButtonStyles> {
  double get btnPrimBorderRadius;
  double get btnPrimHeight;
  double get btnSecBorderRadius;
  double get btnSecHeight;
  OutlinedBorder get btnPrimShape;
  OutlinedBorder get btnSecShape;
  TextStyle get elevBtnPrimTextStyle;
  TextStyle get outBtnPrimTextStyle;
  TextStyle get fillBtnPrimTextStyle;
  TextStyle get textBtnPrimTextStyle;
  Size get btnPrimMinSize;
  Size get btnSecMinSize;
  ButtonStyle get elevBtnPrimStyle;
  ButtonStyle get outBtnPrimStyle;
  ButtonStyle get fillBtnPrimStyle;
  ButtonStyle get textBtnPrimStyle;
  ShapeBorder get fabShape;
  ButtonStyle get iconBtnPrimStyle;
  ButtonStyle get iconBtnSecStyle;

  @override
  BaseButtonStyles copyWith({
    double? btnPrimBorderRadius,
    double? btnPrimHeight,
    double? btnSecBorderRadius,
    double? btnSecHeight,
    OutlinedBorder? btnPrimShape,
    OutlinedBorder? btnSecShape,
    TextStyle? elevBtnPrimTextStyle,
    TextStyle? outBtnPrimTextStyle,
    TextStyle? fillBtnPrimTextStyle,
    TextStyle? textBtnPrimTextStyle,
    Size? btnPrimMinSize,
    Size? btnSecMinSize,
    ButtonStyle? elevBtnPrimStyle,
    ButtonStyle? outBtnPrimStyle,
    ButtonStyle? fillBtnPrimStyle,
    ButtonStyle? textBtnPrimStyle,
    ShapeBorder? fabShape,
    ButtonStyle? iconBtnPrimStyle,
    ButtonStyle? iconBtnSecStyle,
  }) {
    return BaseButtonStyles(
      btnPrimBorderRadius: btnPrimBorderRadius ?? this.btnPrimBorderRadius,
      btnPrimHeight: btnPrimHeight ?? this.btnPrimHeight,
      btnSecBorderRadius: btnSecBorderRadius ?? this.btnSecBorderRadius,
      btnSecHeight: btnSecHeight ?? this.btnSecHeight,
      btnPrimShape: btnPrimShape ?? this.btnPrimShape,
      btnSecShape: btnSecShape ?? this.btnSecShape,
      elevBtnPrimTextStyle: elevBtnPrimTextStyle ?? this.elevBtnPrimTextStyle,
      outBtnPrimTextStyle: outBtnPrimTextStyle ?? this.outBtnPrimTextStyle,
      fillBtnPrimTextStyle: fillBtnPrimTextStyle ?? this.fillBtnPrimTextStyle,
      textBtnPrimTextStyle: textBtnPrimTextStyle ?? this.textBtnPrimTextStyle,
      btnPrimMinSize: btnPrimMinSize ?? this.btnPrimMinSize,
      btnSecMinSize: btnSecMinSize ?? this.btnSecMinSize,
      elevBtnPrimStyle: elevBtnPrimStyle ?? this.elevBtnPrimStyle,
      outBtnPrimStyle: outBtnPrimStyle ?? this.outBtnPrimStyle,
      fillBtnPrimStyle: fillBtnPrimStyle ?? this.fillBtnPrimStyle,
      textBtnPrimStyle: textBtnPrimStyle ?? this.textBtnPrimStyle,
      fabShape: fabShape ?? this.fabShape,
      iconBtnPrimStyle: iconBtnPrimStyle ?? this.iconBtnPrimStyle,
      iconBtnSecStyle: iconBtnSecStyle ?? this.iconBtnSecStyle,
    );
  }

  @override
  BaseButtonStyles lerp(
      covariant ThemeExtension<BaseButtonStyles>? other, double t) {
    if (other is! BaseButtonStyles) return this as BaseButtonStyles;
    return BaseButtonStyles(
      btnPrimBorderRadius:
          t < 0.5 ? btnPrimBorderRadius : other.btnPrimBorderRadius,
      btnPrimHeight: t < 0.5 ? btnPrimHeight : other.btnPrimHeight,
      btnSecBorderRadius:
          t < 0.5 ? btnSecBorderRadius : other.btnSecBorderRadius,
      btnSecHeight: t < 0.5 ? btnSecHeight : other.btnSecHeight,
      btnPrimShape: t < 0.5 ? btnPrimShape : other.btnPrimShape,
      btnSecShape: t < 0.5 ? btnSecShape : other.btnSecShape,
      elevBtnPrimTextStyle:
          TextStyle.lerp(elevBtnPrimTextStyle, other.elevBtnPrimTextStyle, t)!,
      outBtnPrimTextStyle:
          TextStyle.lerp(outBtnPrimTextStyle, other.outBtnPrimTextStyle, t)!,
      fillBtnPrimTextStyle:
          TextStyle.lerp(fillBtnPrimTextStyle, other.fillBtnPrimTextStyle, t)!,
      textBtnPrimTextStyle:
          TextStyle.lerp(textBtnPrimTextStyle, other.textBtnPrimTextStyle, t)!,
      btnPrimMinSize: t < 0.5 ? btnPrimMinSize : other.btnPrimMinSize,
      btnSecMinSize: t < 0.5 ? btnSecMinSize : other.btnSecMinSize,
      elevBtnPrimStyle: t < 0.5 ? elevBtnPrimStyle : other.elevBtnPrimStyle,
      outBtnPrimStyle: t < 0.5 ? outBtnPrimStyle : other.outBtnPrimStyle,
      fillBtnPrimStyle: t < 0.5 ? fillBtnPrimStyle : other.fillBtnPrimStyle,
      textBtnPrimStyle: t < 0.5 ? textBtnPrimStyle : other.textBtnPrimStyle,
      fabShape: t < 0.5 ? fabShape : other.fabShape,
      iconBtnPrimStyle: t < 0.5 ? iconBtnPrimStyle : other.iconBtnPrimStyle,
      iconBtnSecStyle: t < 0.5 ? iconBtnSecStyle : other.iconBtnSecStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseButtonStyles &&
            const DeepCollectionEquality()
                .equals(btnPrimBorderRadius, other.btnPrimBorderRadius) &&
            const DeepCollectionEquality()
                .equals(btnPrimHeight, other.btnPrimHeight) &&
            const DeepCollectionEquality()
                .equals(btnSecBorderRadius, other.btnSecBorderRadius) &&
            const DeepCollectionEquality()
                .equals(btnSecHeight, other.btnSecHeight) &&
            const DeepCollectionEquality()
                .equals(btnPrimShape, other.btnPrimShape) &&
            const DeepCollectionEquality()
                .equals(btnSecShape, other.btnSecShape) &&
            const DeepCollectionEquality()
                .equals(elevBtnPrimTextStyle, other.elevBtnPrimTextStyle) &&
            const DeepCollectionEquality()
                .equals(outBtnPrimTextStyle, other.outBtnPrimTextStyle) &&
            const DeepCollectionEquality()
                .equals(fillBtnPrimTextStyle, other.fillBtnPrimTextStyle) &&
            const DeepCollectionEquality()
                .equals(textBtnPrimTextStyle, other.textBtnPrimTextStyle) &&
            const DeepCollectionEquality()
                .equals(btnPrimMinSize, other.btnPrimMinSize) &&
            const DeepCollectionEquality()
                .equals(btnSecMinSize, other.btnSecMinSize) &&
            const DeepCollectionEquality()
                .equals(elevBtnPrimStyle, other.elevBtnPrimStyle) &&
            const DeepCollectionEquality()
                .equals(outBtnPrimStyle, other.outBtnPrimStyle) &&
            const DeepCollectionEquality()
                .equals(fillBtnPrimStyle, other.fillBtnPrimStyle) &&
            const DeepCollectionEquality()
                .equals(textBtnPrimStyle, other.textBtnPrimStyle) &&
            const DeepCollectionEquality().equals(fabShape, other.fabShape) &&
            const DeepCollectionEquality()
                .equals(iconBtnPrimStyle, other.iconBtnPrimStyle) &&
            const DeepCollectionEquality()
                .equals(iconBtnSecStyle, other.iconBtnSecStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(btnPrimBorderRadius),
      const DeepCollectionEquality().hash(btnPrimHeight),
      const DeepCollectionEquality().hash(btnSecBorderRadius),
      const DeepCollectionEquality().hash(btnSecHeight),
      const DeepCollectionEquality().hash(btnPrimShape),
      const DeepCollectionEquality().hash(btnSecShape),
      const DeepCollectionEquality().hash(elevBtnPrimTextStyle),
      const DeepCollectionEquality().hash(outBtnPrimTextStyle),
      const DeepCollectionEquality().hash(fillBtnPrimTextStyle),
      const DeepCollectionEquality().hash(textBtnPrimTextStyle),
      const DeepCollectionEquality().hash(btnPrimMinSize),
      const DeepCollectionEquality().hash(btnSecMinSize),
      const DeepCollectionEquality().hash(elevBtnPrimStyle),
      const DeepCollectionEquality().hash(outBtnPrimStyle),
      const DeepCollectionEquality().hash(fillBtnPrimStyle),
      const DeepCollectionEquality().hash(textBtnPrimStyle),
      const DeepCollectionEquality().hash(fabShape),
      const DeepCollectionEquality().hash(iconBtnPrimStyle),
      const DeepCollectionEquality().hash(iconBtnSecStyle),
    );
  }
}

extension BaseButtonStylesBuildContext on BuildContext {
  BaseButtonStyles get baseButtonStyles =>
      Theme.of(this).extension<BaseButtonStyles>()!;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_buttons_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseButtonStylesTailorMixin on ThemeExtension<BaseButtonStyles> {
  ButtonStyle get elevBtnPrimStyle;
  ButtonStyle get outBtnPrimStyle;
  ButtonStyle get fillBtnPrimStyle;
  ButtonStyle get textBtnPrimStyle;
  ShapeBorder get fabShape;
  ButtonStyle get iconBtnPrimStyle;

  @override
  BaseButtonStyles copyWith({
    ButtonStyle? elevBtnPrimStyle,
    ButtonStyle? outBtnPrimStyle,
    ButtonStyle? fillBtnPrimStyle,
    ButtonStyle? textBtnPrimStyle,
    ShapeBorder? fabShape,
    ButtonStyle? iconBtnPrimStyle,
  }) {
    return BaseButtonStyles(
      elevBtnPrimStyle: elevBtnPrimStyle ?? this.elevBtnPrimStyle,
      outBtnPrimStyle: outBtnPrimStyle ?? this.outBtnPrimStyle,
      fillBtnPrimStyle: fillBtnPrimStyle ?? this.fillBtnPrimStyle,
      textBtnPrimStyle: textBtnPrimStyle ?? this.textBtnPrimStyle,
      fabShape: fabShape ?? this.fabShape,
      iconBtnPrimStyle: iconBtnPrimStyle ?? this.iconBtnPrimStyle,
    );
  }

  @override
  BaseButtonStyles lerp(
      covariant ThemeExtension<BaseButtonStyles>? other, double t) {
    if (other is! BaseButtonStyles) return this as BaseButtonStyles;
    return BaseButtonStyles(
      elevBtnPrimStyle: t < 0.5 ? elevBtnPrimStyle : other.elevBtnPrimStyle,
      outBtnPrimStyle: t < 0.5 ? outBtnPrimStyle : other.outBtnPrimStyle,
      fillBtnPrimStyle: t < 0.5 ? fillBtnPrimStyle : other.fillBtnPrimStyle,
      textBtnPrimStyle: t < 0.5 ? textBtnPrimStyle : other.textBtnPrimStyle,
      fabShape: t < 0.5 ? fabShape : other.fabShape,
      iconBtnPrimStyle: t < 0.5 ? iconBtnPrimStyle : other.iconBtnPrimStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseButtonStyles &&
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
                .equals(iconBtnPrimStyle, other.iconBtnPrimStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(elevBtnPrimStyle),
      const DeepCollectionEquality().hash(outBtnPrimStyle),
      const DeepCollectionEquality().hash(fillBtnPrimStyle),
      const DeepCollectionEquality().hash(textBtnPrimStyle),
      const DeepCollectionEquality().hash(fabShape),
      const DeepCollectionEquality().hash(iconBtnPrimStyle),
    );
  }
}

extension BaseButtonStylesBuildContext on BuildContext {
  BaseButtonStyles get baseButtonStyles =>
      Theme.of(this).extension<BaseButtonStyles>()!;
}

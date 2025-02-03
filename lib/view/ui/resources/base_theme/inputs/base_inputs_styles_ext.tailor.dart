// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_inputs_styles_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseInputsStylesTailorMixin on ThemeExtension<BaseInputsStyles> {
  TextStyle get txtFlsPrimInpTextStyle;
  TextStyle get txtFldPrimErrorTextStyle;
  TextStyle get txtFldPrimLabelTextStyle;
  InputBorder get txtFldPrimInpBorder;
  InputBorder get txtFldPrimFocusBorder;
  InputBorder get txtFldPrimErrorBorder;

  @override
  BaseInputsStyles copyWith({
    TextStyle? txtFlsPrimInpTextStyle,
    TextStyle? txtFldPrimErrorTextStyle,
    TextStyle? txtFldPrimLabelTextStyle,
    InputBorder? txtFldPrimInpBorder,
    InputBorder? txtFldPrimFocusBorder,
    InputBorder? txtFldPrimErrorBorder,
  }) {
    return BaseInputsStyles(
      txtFlsPrimInpTextStyle:
          txtFlsPrimInpTextStyle ?? this.txtFlsPrimInpTextStyle,
      txtFldPrimErrorTextStyle:
          txtFldPrimErrorTextStyle ?? this.txtFldPrimErrorTextStyle,
      txtFldPrimLabelTextStyle:
          txtFldPrimLabelTextStyle ?? this.txtFldPrimLabelTextStyle,
      txtFldPrimInpBorder: txtFldPrimInpBorder ?? this.txtFldPrimInpBorder,
      txtFldPrimFocusBorder:
          txtFldPrimFocusBorder ?? this.txtFldPrimFocusBorder,
      txtFldPrimErrorBorder:
          txtFldPrimErrorBorder ?? this.txtFldPrimErrorBorder,
    );
  }

  @override
  BaseInputsStyles lerp(
      covariant ThemeExtension<BaseInputsStyles>? other, double t) {
    if (other is! BaseInputsStyles) return this as BaseInputsStyles;
    return BaseInputsStyles(
      txtFlsPrimInpTextStyle: TextStyle.lerp(
          txtFlsPrimInpTextStyle, other.txtFlsPrimInpTextStyle, t)!,
      txtFldPrimErrorTextStyle: TextStyle.lerp(
          txtFldPrimErrorTextStyle, other.txtFldPrimErrorTextStyle, t)!,
      txtFldPrimLabelTextStyle: TextStyle.lerp(
          txtFldPrimLabelTextStyle, other.txtFldPrimLabelTextStyle, t)!,
      txtFldPrimInpBorder:
          t < 0.5 ? txtFldPrimInpBorder : other.txtFldPrimInpBorder,
      txtFldPrimFocusBorder:
          t < 0.5 ? txtFldPrimFocusBorder : other.txtFldPrimFocusBorder,
      txtFldPrimErrorBorder:
          t < 0.5 ? txtFldPrimErrorBorder : other.txtFldPrimErrorBorder,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseInputsStyles &&
            const DeepCollectionEquality()
                .equals(txtFlsPrimInpTextStyle, other.txtFlsPrimInpTextStyle) &&
            const DeepCollectionEquality().equals(
                txtFldPrimErrorTextStyle, other.txtFldPrimErrorTextStyle) &&
            const DeepCollectionEquality().equals(
                txtFldPrimLabelTextStyle, other.txtFldPrimLabelTextStyle) &&
            const DeepCollectionEquality()
                .equals(txtFldPrimInpBorder, other.txtFldPrimInpBorder) &&
            const DeepCollectionEquality()
                .equals(txtFldPrimFocusBorder, other.txtFldPrimFocusBorder) &&
            const DeepCollectionEquality()
                .equals(txtFldPrimErrorBorder, other.txtFldPrimErrorBorder));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(txtFlsPrimInpTextStyle),
      const DeepCollectionEquality().hash(txtFldPrimErrorTextStyle),
      const DeepCollectionEquality().hash(txtFldPrimLabelTextStyle),
      const DeepCollectionEquality().hash(txtFldPrimInpBorder),
      const DeepCollectionEquality().hash(txtFldPrimFocusBorder),
      const DeepCollectionEquality().hash(txtFldPrimErrorBorder),
    );
  }
}

extension BaseInputsStylesBuildContext on BuildContext {
  BaseInputsStyles get baseInputsStyles =>
      Theme.of(this).extension<BaseInputsStyles>()!;
}

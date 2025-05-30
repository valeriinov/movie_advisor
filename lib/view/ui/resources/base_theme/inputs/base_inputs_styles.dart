part of 'base_inputs_styles_ext.dart';

abstract final class _BaseInputsStyles {
  static const double txtFldBorderRadius = 16.0;

  static TextStyle txtFldPrimInpTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.openSans,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: color,
  );

  static TextStyle txtFldPrimErrorTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle txtFldPrimLabelTextStyle(Color color) => TextStyle(
    fontFamily: AppFonts.openSans,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: color,
  );

  static const EdgeInsets txtFldPrimContPadding = EdgeInsets.fromLTRB(
    25,
    10,
    18,
    10,
  );

  static InputBorder txtFldPrimInpBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadiusCircular(txtFldBorderRadius),
    );
  }

  static InputBorder txtFldPrimFocusBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadiusCircular(txtFldBorderRadius),
    );
  }

  static InputBorder txtFldPrimErrorBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadiusCircular(txtFldBorderRadius),
    );
  }
}

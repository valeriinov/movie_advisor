part of 'base_inputs_styles_ext.dart';

abstract final class _BaseInputsStyles {
  static const double borderRadius = 12.0;

  static TextStyle txtFldPrimInpTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle txtFldPrimErrorTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle txtFldPrimLabelTextStyle(Color color) =>
      TextStyle(color: color);

  static InputBorder txtFldPrimInpBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadiusCircular(borderRadius));
  }

  static InputBorder txtFldPrimFocusBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadiusCircular(borderRadius));
  }

  static InputBorder txtFldPrimErrorBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadiusCircular(borderRadius));
  }
}

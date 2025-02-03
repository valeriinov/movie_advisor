part of 'base_buttons_styles_ext.dart';

abstract final class _BaseButtonsStyles {
  static const borderRadius = 12.0;
  static const btnHeight = 48.0;

  static const elevBtnPrimTextStyle = TextStyle();

  static const outBtnPrimTextStyle = TextStyle();

  static const fillBtnPrimTextStyle = TextStyle();

  static const textBtnPrimTextStyle = TextStyle();

  static ButtonStyle elevBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) =>
      ButtonStyle(
        foregroundColor: WidgetStateResolver(
          defaultValue: fgColor,
          pressed: fgPressColor,
          disabled: fgDisColor,
        ),
        backgroundColor: WidgetStateResolver(
          defaultValue: bgColor,
          pressed: bgPressColor,
          disabled: bgDisColor,
        ),
        textStyle: WidgetStateResolver(defaultValue: elevBtnPrimTextStyle),
        shape: _createButtonShape(borderRadius),
        minimumSize: _createMinSize(btnHeight),
      );

  static ButtonStyle outBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) =>
      ButtonStyle(
        foregroundColor: WidgetStateResolver(
          defaultValue: fgColor,
          pressed: fgPressColor,
          disabled: fgDisColor,
        ),
        backgroundColor: WidgetStateResolver(
          defaultValue: bgColor,
          pressed: bgPressColor,
          disabled: bgDisColor,
        ),
        textStyle: WidgetStateResolver(defaultValue: outBtnPrimTextStyle),
        shape: _createButtonShape(borderRadius),
        side: WidgetStateResolver(
          disabled: bgDisColor != null ? BorderSide(color: bgDisColor) : null,
          pressed:
              bgPressColor != null ? BorderSide(color: bgPressColor) : null,
          defaultValue: fgColor != null ? BorderSide(color: fgColor) : null,
        ),
        minimumSize: _createMinSize(btnHeight),
      );

  static ButtonStyle fillBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) =>
      ButtonStyle(
        foregroundColor: WidgetStateResolver(
          defaultValue: fgColor,
          pressed: fgPressColor,
          disabled: fgDisColor,
        ),
        backgroundColor: WidgetStateResolver(
          defaultValue: bgColor,
          pressed: bgPressColor,
          disabled: bgDisColor,
        ),
        textStyle: WidgetStateResolver(defaultValue: fillBtnPrimTextStyle),
        shape: _createButtonShape(borderRadius),
        minimumSize: _createMinSize(btnHeight),
      );

  static ButtonStyle textBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) =>
      ButtonStyle(
        foregroundColor: WidgetStateResolver(
          defaultValue: fgColor,
          pressed: fgPressColor,
          disabled: fgDisColor,
        ),
        backgroundColor: WidgetStateResolver(
          defaultValue: bgColor,
          pressed: bgPressColor,
          disabled: bgDisColor,
        ),
        textStyle: WidgetStateResolver(defaultValue: textBtnPrimTextStyle),
        shape: _createButtonShape(borderRadius),
      );

  static ButtonStyle iconBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) =>
      ButtonStyle(
        foregroundColor: WidgetStateResolver(
          defaultValue: fgColor,
          pressed: fgPressColor,
          disabled: fgDisColor,
        ),
        backgroundColor: WidgetStateResolver(
          defaultValue: bgColor,
          pressed: bgPressColor,
          disabled: bgDisColor,
        ),
      );

  static ShapeBorder fabShape = const CircleBorder();

  static WidgetStateProperty<OutlinedBorder?>? _createButtonShape(
          double radius) =>
      WidgetStateResolver(
        defaultValue: RoundedRectangleBorder(
          borderRadius: BorderRadiusCircular(radius),
        ),
      );

  static WidgetStateProperty<Size?> _createMinSize(double height) =>
      WidgetStateResolver(
        defaultValue: Size.fromHeight(height),
      );
}

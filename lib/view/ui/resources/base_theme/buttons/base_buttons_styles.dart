part of 'base_buttons_styles_ext.dart';

abstract final class _BaseButtonsStyles {
  static const btnPrimBorderRadius = 28.0;
  static const btnPrimHeight = 56.0;

  static const btnSecBorderRadius = 12.0;
  static const btnSecHeight = 40.0;

  static OutlinedBorder btnPrimShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(btnPrimBorderRadius),
  );

  static OutlinedBorder btnSecShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(btnSecBorderRadius),
  );

  static const Size btnPrimMinSize = Size.fromHeight(btnPrimHeight);

  static const Size btnSecMinSize = Size.fromHeight(btnSecHeight);

  static const elevBtnPrimTextStyle = TextStyle();

  static const outBtnPrimTextStyle = TextStyle();

  static const fillBtnPrimTextStyle = TextStyle(
    fontFamily: AppFonts.montserrat,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    height: 20.0 / 16.0,
    letterSpacing: 0.75,
    overflow: TextOverflow.ellipsis,
  );

  static const textBtnPrimTextStyle = TextStyle();

  static ButtonStyle elevBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) => ButtonStyle(
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
    shape: _createButtonShape(btnPrimBorderRadius),
    minimumSize: _createMinSize(btnPrimHeight),
  );

  static ButtonStyle outBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) => ButtonStyle(
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
    shape: _createButtonShape(btnPrimBorderRadius),
    side: WidgetStateResolver(
      disabled: bgDisColor != null ? BorderSide(color: bgDisColor) : null,
      pressed: bgPressColor != null ? BorderSide(color: bgPressColor) : null,
      defaultValue: fgColor != null ? BorderSide(color: fgColor) : null,
    ),
    minimumSize: _createMinSize(btnPrimHeight),
  );

  static ButtonStyle fillBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) => ButtonStyle(
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
    shape: _createButtonShape(btnPrimBorderRadius),
    minimumSize: _createMinSize(btnPrimHeight),
  );

  static ButtonStyle textBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) => ButtonStyle(
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
    shape: _createButtonShape(btnPrimBorderRadius),
  );

  static ButtonStyle iconBtnPrimStyle({
    Color? fgColor,
    Color? bgColor,
    Color? fgPressColor,
    Color? bgPressColor,
    Color? fgDisColor,
    Color? bgDisColor,
  }) => ButtonStyle(
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
    double radius,
  ) => WidgetStateResolver(
    defaultValue: RoundedRectangleBorder(
      borderRadius: BorderRadiusCircular(radius),
    ),
  );

  static WidgetStateProperty<Size?> _createMinSize(double height) =>
      WidgetStateResolver(defaultValue: Size.fromHeight(height));
}

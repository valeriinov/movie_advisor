part of 'base_dialogs_styles_ext.dart';

abstract final class _BaseDialogsStyles {
  static const double borderRadius = 12.0;

  static TextStyle dlgPrimTitleTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle dlgPrimContTextStyle(Color color) => TextStyle(color: color);

  static TextStyle dlgPrimBtnTextStyle(Color color) => TextStyle(color: color);

  static EdgeInsets dlgPrimActPadding = EdgeInsets.fromLTRB(10, 0, 10, 16);

  static EdgeInsets dlgPrimInsPadding = EdgeInsets.symmetric(horizontal: 24);

  static ShapeBorder dlgPrimShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(borderRadius),
  );
}

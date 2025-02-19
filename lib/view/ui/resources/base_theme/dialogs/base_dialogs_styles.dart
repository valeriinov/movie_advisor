part of 'base_dialogs_styles_ext.dart';

abstract final class _BaseDialogsStyles {
  static const double dlgBorderRadius = 12.0;

  static TextStyle dlgPrimTitleTextStyle(Color color) =>
      TextStyle(color: color);

  static TextStyle dlgPrimContTextStyle(Color color) => TextStyle(color: color);

  static TextStyle dlgPrimBtnTextStyle(Color color) => TextStyle(color: color);

  static EdgeInsets dlgPrimActPadding = EdgeInsets.fromLTRB(10, 0, 10, 16);

  static EdgeInsets dlgPrimInsPadding = EdgeInsets.symmetric(horizontal: 24);

  static ShapeBorder dlgPrimShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(dlgBorderRadius),
  );

  static const double toastBorderRadius = 12.0;
  static const double toastBotMargin = 35.0;
  static const double toastHorMargin = 12.0;
  static const double toastMinHeight = 45.0;
  static const EdgeInsets toastContPadding = EdgeInsets.fromLTRB(17, 12, 15, 12);

  static TextStyle toastTextStyle(Color color) => TextStyle(
        fontFamily: AppFonts.roboto,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 22.4 / 17,
        color: color,
      );
}

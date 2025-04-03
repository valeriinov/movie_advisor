import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_dialogs_styles.dart';

part 'base_dialogs_styles_ext.tailor.dart';

abstract final class BaseDialogsStylesFactory {
  static BaseDialogsStyles createDialogsStyles(BaseColors colors) {
    return BaseDialogsStyles(
      dlgPrimTitleTextStyle: _BaseDialogsStyles.dlgPrimTitleTextStyle(
        colors.dlgPrimTitle,
      ),
      dlgPrimContTextStyle: _BaseDialogsStyles.dlgPrimContTextStyle(
        colors.dlgPrimCont,
      ),
      dlgPrimBtnTextStyle: _BaseDialogsStyles.dlgPrimBtnTextStyle(
        colors.dlgPrimBtnFg,
      ),
      dlgSecBtnTextStyle: _BaseDialogsStyles.dlgSecBtnTextStyle(
        colors.dlgSecBtnFg,
      ),
      dlgPrimActPadding: _BaseDialogsStyles.dlgPrimActPadding,
      dlgPrimInsPadding: _BaseDialogsStyles.dlgPrimInsPadding,
      dlgPrimShape: _BaseDialogsStyles.dlgPrimShape,
      toastBorderRadius: _BaseDialogsStyles.toastBorderRadius,
      toastBotMargin: _BaseDialogsStyles.toastBotMargin,
      toastHorMargin: _BaseDialogsStyles.toastHorMargin,
      toastMinHeight: _BaseDialogsStyles.toastMinHeight,
      toastContPadding: _BaseDialogsStyles.toastContPadding,
      toastTextStyle: _BaseDialogsStyles.toastTextStyle(colors.toastFg),
    );
  }
}

@TailorMixin()
class BaseDialogsStyles extends ThemeExtension<BaseDialogsStyles>
    with _$BaseDialogsStylesTailorMixin {
  /// Primary TextStyle of the dialog title
  @override
  final TextStyle dlgPrimTitleTextStyle;

  /// Primary TextStyle of the dialog content
  @override
  final TextStyle dlgPrimContTextStyle;

  /// Primary TextStyle of the dialog button
  @override
  final TextStyle dlgPrimBtnTextStyle;

  /// Secondary TextStyle of the dialog button
  @override
  final TextStyle dlgSecBtnTextStyle;

  /// Primary padding of the dialog actions
  @override
  final EdgeInsets dlgPrimActPadding;

  /// Primary padding of the dialog insets
  @override
  final EdgeInsets dlgPrimInsPadding;

  /// Primary ShapeBorder of the dialog
  @override
  final ShapeBorder dlgPrimShape;

  /// BorderRadius of the toast
  @override
  final double toastBorderRadius;

  /// Bottom margin of the toast
  @override
  final double toastBotMargin;

  /// Horizontal margin of the toast
  @override
  final double toastHorMargin;

  /// Minimum height of the toast
  @override
  final double toastMinHeight;

  /// Padding of the toast content
  @override
  final EdgeInsets toastContPadding;

  /// TextStyle of the toast
  @override
  final TextStyle toastTextStyle;

  BaseDialogsStyles({
    required this.dlgPrimTitleTextStyle,
    required this.dlgPrimContTextStyle,
    required this.dlgPrimBtnTextStyle,
    required this.dlgSecBtnTextStyle,
    required this.dlgPrimActPadding,
    required this.dlgPrimInsPadding,
    required this.dlgPrimShape,
    required this.toastBorderRadius,
    required this.toastBotMargin,
    required this.toastHorMargin,
    required this.toastMinHeight,
    required this.toastContPadding,
    required this.toastTextStyle,
  });
}

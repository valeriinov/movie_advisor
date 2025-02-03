import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

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
      dlgPrimActPadding: _BaseDialogsStyles.dlgPrimActPadding,
      dlgPrimInsPadding: _BaseDialogsStyles.dlgPrimInsPadding,
      dlgPrimShape: _BaseDialogsStyles.dlgPrimShape,
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

  /// Primary padding of the dialog actions
  @override
  final EdgeInsets dlgPrimActPadding;

  /// Primary padding of the dialog insets
  @override
  final EdgeInsets dlgPrimInsPadding;

  /// Primary ShapeBorder of the dialog
  @override
  final ShapeBorder dlgPrimShape;

  BaseDialogsStyles({
    required this.dlgPrimTitleTextStyle,
    required this.dlgPrimContTextStyle,
    required this.dlgPrimBtnTextStyle,
    required this.dlgPrimActPadding,
    required this.dlgPrimInsPadding,
    required this.dlgPrimShape,
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_buttons_styles.dart';

part 'base_buttons_styles_ext.tailor.dart';

abstract final class BaseButtonStylesFactory {
  static BaseButtonStyles createButtonsStyles(BaseColors colors) {
    return BaseButtonStyles(
      elevBtnPrimStyle: _BaseButtonsStyles.elevBtnPrimStyle(
        fgColor: colors.btnElevPrimFg,
        bgColor: colors.btnElevPrimBg,
        fgPressColor: colors.btnElevPrimFgPress,
        bgPressColor: colors.btnElevPrimBgPress,
        fgDisColor: colors.btnElevPrimFgDis,
        bgDisColor: colors.btnElevPrimBgDis,
      ),
      outBtnPrimStyle: _BaseButtonsStyles.outBtnPrimStyle(
        fgColor: colors.btnOutPrimFg,
        bgColor: colors.btnOutPrimBg,
        fgPressColor: colors.btnOutPrimFgPress,
        bgPressColor: colors.btnOutPrimBgPress,
        fgDisColor: colors.btnOutPrimFgDis,
        bgDisColor: colors.btnOutPrimBgDis,
      ),
      fillBtnPrimStyle: _BaseButtonsStyles.fillBtnPrimStyle(
        fgColor: colors.btnFillPrimFg,
        bgColor: colors.btnFillPrimBg,
        fgPressColor: colors.btnFillPrimFgPress,
        bgPressColor: colors.btnFillPrimBgPress,
        fgDisColor: colors.btnFillPrimFgDis,
        bgDisColor: colors.btnFillPrimBgDis,
      ),
      textBtnPrimStyle: _BaseButtonsStyles.textBtnPrimStyle(
        fgColor: colors.btnTextPrimFg,
        bgColor: colors.btnTextPrimBg,
        fgPressColor: colors.btnTextPrimFgPress,
        bgPressColor: colors.btnTextPrimBgPress,
        fgDisColor: colors.btnTextPrimFgDis,
        bgDisColor: colors.btnTextPrimBgDis,
      ),
      fabShape: _BaseButtonsStyles.fabShape,
      iconBtnPrimStyle: _BaseButtonsStyles.iconBtnPrimStyle(
        fgColor: colors.btnIconPrim,
      ),
    );
  }
}

@TailorMixin()
class BaseButtonStyles extends ThemeExtension<BaseButtonStyles>
    with _$BaseButtonStylesTailorMixin {
  /// Primary elevated button style.
  @override
  final ButtonStyle elevBtnPrimStyle;

  /// Primary outlined button style.
  @override
  final ButtonStyle outBtnPrimStyle;

  /// Primary filled button style.
  @override
  final ButtonStyle fillBtnPrimStyle;

  /// Primary text button style.
  @override
  final ButtonStyle textBtnPrimStyle;

  // Floating Action Button Shape.
  @override
  final ShapeBorder fabShape;

  // Primary Icon Button Style.
  @override
  final ButtonStyle iconBtnPrimStyle;

  BaseButtonStyles({
    required this.elevBtnPrimStyle,
    required this.outBtnPrimStyle,
    required this.fillBtnPrimStyle,
    required this.textBtnPrimStyle,
    required this.fabShape,
    required this.iconBtnPrimStyle,
  });
}

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
      btnPrimBorderRadius: _BaseButtonsStyles.btnPrimBorderRadius,
      btnPrimHeight: _BaseButtonsStyles.btnPrimHeight,
      btnSecBorderRadius: _BaseButtonsStyles.btnSecBorderRadius,
      btnSecHeight: _BaseButtonsStyles.btnSecHeight,
      btnPrimShape: _BaseButtonsStyles.btnPrimShape,
      btnSecShape: _BaseButtonsStyles.btnSecShape,
      btnPrimMinSize: _BaseButtonsStyles.btnPrimMinSize,
      btnSecMinSize: _BaseButtonsStyles.btnSecMinSize,
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
      iconBtnPrimStyle: _BaseButtonsStyles.iconBtnStyle(
        fgColor: colors.btnIconPrim,
      ),
      iconBtnSecStyle: _BaseButtonsStyles.iconBtnStyle(
        fgColor: colors.btnIconSecFg,
        bgColor: colors.btnIconSecBg,
        bgPressColor: colors.btnIconSecBgPress,
      ),
    );
  }
}

@TailorMixin()
class BaseButtonStyles extends ThemeExtension<BaseButtonStyles>
    with _$BaseButtonStylesTailorMixin {
  /// Primary button border radius.
  @override
  final double btnPrimBorderRadius;

  /// Primary button height.
  @override
  final double btnPrimHeight;

  /// Secondary button border radius.
  @override
  final double btnSecBorderRadius;

  /// Secondary button height.
  @override
  final double btnSecHeight;

  /// Primary button shape.
  @override
  final OutlinedBorder btnPrimShape;

  /// Secondary button shape.
  @override
  final OutlinedBorder btnSecShape;

  /// Primary button minimum size.
  @override
  final Size btnPrimMinSize;

  /// Secondary button minimum size.
  @override
  final Size btnSecMinSize;

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

  /// Secondary Icon Button Style.
  @override
  final ButtonStyle iconBtnSecStyle;

  BaseButtonStyles({
    required this.btnPrimBorderRadius,
    required this.btnPrimHeight,
    required this.btnSecBorderRadius,
    required this.btnSecHeight,
    required this.btnPrimShape,
    required this.btnSecShape,
    required this.btnPrimMinSize,
    required this.btnSecMinSize,
    required this.elevBtnPrimStyle,
    required this.outBtnPrimStyle,
    required this.fillBtnPrimStyle,
    required this.textBtnPrimStyle,
    required this.fabShape,
    required this.iconBtnPrimStyle,
    required this.iconBtnSecStyle,
  });
}

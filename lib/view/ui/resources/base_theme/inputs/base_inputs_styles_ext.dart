import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../../app_fonts.dart';
import '../colors/base_colors_ext.dart';

part 'base_inputs_styles.dart';

part 'base_inputs_styles_ext.tailor.dart';

abstract final class BaseInputsStylesFactory {
  static BaseInputsStyles createInputsStyles(BaseColors colors) {
    return BaseInputsStyles(
      txtFldBorderRadius: _BaseInputsStyles.txtFldBorderRadius,
      txtFlsPrimInpTextStyle: _BaseInputsStyles.txtFldPrimInpTextStyle(
        colors.txtFldPrimInput,
      ),
      txtFldPrimErrorTextStyle: _BaseInputsStyles.txtFldPrimErrorTextStyle(
        colors.txtFldPrimBorderError,
      ),
      txtFldPrimLabelTextStyle: _BaseInputsStyles.txtFldPrimLabelTextStyle(
        colors.txtFldPrimLabel,
      ),
      txtFldPrimContPadding: _BaseInputsStyles.txtFldPrimContPadding,
      txtFldPrimInpBorder: _BaseInputsStyles.txtFldPrimInpBorder(
        colors.txtFldPrimBorder,
      ),
      txtFldPrimFocusBorder: _BaseInputsStyles.txtFldPrimFocusBorder(
        colors.txtFldPrimBorderFocus,
      ),
      txtFldPrimErrorBorder: _BaseInputsStyles.txtFldPrimErrorBorder(
        colors.txtFldPrimBorderError,
      ),
    );
  }
}

@TailorMixin()
class BaseInputsStyles extends ThemeExtension<BaseInputsStyles>
    with _$BaseInputsStylesTailorMixin {
  /// Border radius of the input field
  @override
  final double txtFldBorderRadius;

  /// Primary TextStyle of the input field
  @override
  final TextStyle txtFlsPrimInpTextStyle;

  /// Primary TextStyle of the error message
  @override
  final TextStyle txtFldPrimErrorTextStyle;

  /// Primary TextStyle of the label
  @override
  final TextStyle txtFldPrimLabelTextStyle;

  /// Primary content padding
  @override
  final EdgeInsets txtFldPrimContPadding;

  /// Primary InputBorder
  @override
  final InputBorder txtFldPrimInpBorder;

  /// Primary focused InputBorder
  @override
  final InputBorder txtFldPrimFocusBorder;

  /// Primary error InputBorder
  @override
  final InputBorder txtFldPrimErrorBorder;

  BaseInputsStyles({
    required this.txtFldBorderRadius,
    required this.txtFlsPrimInpTextStyle,
    required this.txtFldPrimErrorTextStyle,
    required this.txtFldPrimLabelTextStyle,
    required this.txtFldPrimContPadding,
    required this.txtFldPrimInpBorder,
    required this.txtFldPrimFocusBorder,
    required this.txtFldPrimErrorBorder,
  });
}

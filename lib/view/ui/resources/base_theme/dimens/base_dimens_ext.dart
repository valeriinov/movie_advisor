import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'base_dimens.dart';

part 'base_dimens_ext.tailor.dart';

abstract final class BaseDimensFactory {
  static BaseDimens createDimens() {
    return BaseDimens(
      padHorPrim: _BaseDimens.padHorPrim,
      padTopPrim: _BaseDimens.padTopPrim,
      padBotPrim: _BaseDimens.padBotPrim,
      padBotSec: _BaseDimens.padHorSec,
      padHorPrimIns: _BaseDimens.padHorPrimIns,
      padTopPrimIns: _BaseDimens.padTopPrimIns,
      padBotPrimIns: _BaseDimens.padBotPrimIns,
      padHorSecIns: _BaseDimens.padHorSecIns,
      spExtSmall: _BaseDimens.spExtSmall,
      spSmall: _BaseDimens.spSmall,
      spMedium: _BaseDimens.spMedium,
      spLarge: _BaseDimens.spLarge,
      spExtLarge: _BaseDimens.spExtLarge,
    );
  }
}

@TailorMixin()
class BaseDimens extends ThemeExtension<BaseDimens>
    with _$BaseDimensTailorMixin {
  // SCREEN PADDINGS

  /// Primary horizontal padding value for the screen
  @override
  final double padHorPrim;

  /// Primary top padding value for the screen
  @override
  final double padTopPrim;

  /// Primary bottom padding value for the screen
  @override
  final double padBotPrim;

  /// Secondary horizontal padding value for the screen
  @override
  final double padBotSec;

  /// Primary horizontal padding for the screen
  @override
  final EdgeInsets padHorPrimIns;

  /// Primary top padding for the screen
  @override
  final EdgeInsets padTopPrimIns;

  /// Primary bottom padding for the screen
  @override
  final EdgeInsets padBotPrimIns;

  /// Secondary horizontal padding for the screen
  @override
  final EdgeInsets padHorSecIns;

  // SPACINGS

  /// Extra small spacing value
  @override
  final double spExtSmall;

  /// Small spacing value
  @override
  final double spSmall;

  /// Medium spacing value
  @override
  final double spMedium;

  /// Large spacing value
  @override
  final double spLarge;

  /// Extra large spacing value
  @override
  final double spExtLarge;

  BaseDimens({
    required this.padHorPrim,
    required this.padTopPrim,
    required this.padBotPrim,
    required this.padBotSec,
    required this.padHorPrimIns,
    required this.padTopPrimIns,
    required this.padBotPrimIns,
    required this.padHorSecIns,
    required this.spExtSmall,
    required this.spSmall,
    required this.spMedium,
    required this.spLarge,
    required this.spExtLarge,
  });
}

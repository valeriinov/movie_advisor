part of 'base_dimens_ext.dart';

abstract final class _BaseDimens {
  // Screen paddings
  static const double padHorPrim = 16;
  static const double padTopPrim = 30;
  static const double padBotPrim = 30;

  static const padHorPrimIns = EdgeInsets.symmetric(horizontal: padHorPrim);
  static const padTopPrimIns = EdgeInsets.only(top: padTopPrim);
  static const padBotPrimIns = EdgeInsets.only(bottom: padBotPrim);

  // Spacings
  static const double spExtSmall = 4;
  static const double spSmall = 8;
  static const double spMedium = 16;
  static const double spLarge = 24;
  static const double spExtLarge = 32;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_dimens_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseDimensTailorMixin on ThemeExtension<BaseDimens> {
  double get padHorPrim;
  double get padTopPrim;
  double get padBotPrim;
  double get padBotSec;
  EdgeInsets get padHorPrimIns;
  EdgeInsets get padTopPrimIns;
  EdgeInsets get padBotPrimIns;
  EdgeInsets get padHorSecIns;
  double get spExtSmall;
  double get spSmall;
  double get spMedium;
  double get spLarge;
  double get spExtLarge;

  @override
  BaseDimens copyWith({
    double? padHorPrim,
    double? padTopPrim,
    double? padBotPrim,
    double? padBotSec,
    EdgeInsets? padHorPrimIns,
    EdgeInsets? padTopPrimIns,
    EdgeInsets? padBotPrimIns,
    EdgeInsets? padHorSecIns,
    double? spExtSmall,
    double? spSmall,
    double? spMedium,
    double? spLarge,
    double? spExtLarge,
  }) {
    return BaseDimens(
      padHorPrim: padHorPrim ?? this.padHorPrim,
      padTopPrim: padTopPrim ?? this.padTopPrim,
      padBotPrim: padBotPrim ?? this.padBotPrim,
      padBotSec: padBotSec ?? this.padBotSec,
      padHorPrimIns: padHorPrimIns ?? this.padHorPrimIns,
      padTopPrimIns: padTopPrimIns ?? this.padTopPrimIns,
      padBotPrimIns: padBotPrimIns ?? this.padBotPrimIns,
      padHorSecIns: padHorSecIns ?? this.padHorSecIns,
      spExtSmall: spExtSmall ?? this.spExtSmall,
      spSmall: spSmall ?? this.spSmall,
      spMedium: spMedium ?? this.spMedium,
      spLarge: spLarge ?? this.spLarge,
      spExtLarge: spExtLarge ?? this.spExtLarge,
    );
  }

  @override
  BaseDimens lerp(covariant ThemeExtension<BaseDimens>? other, double t) {
    if (other is! BaseDimens) return this as BaseDimens;
    return BaseDimens(
      padHorPrim: t < 0.5 ? padHorPrim : other.padHorPrim,
      padTopPrim: t < 0.5 ? padTopPrim : other.padTopPrim,
      padBotPrim: t < 0.5 ? padBotPrim : other.padBotPrim,
      padBotSec: t < 0.5 ? padBotSec : other.padBotSec,
      padHorPrimIns: t < 0.5 ? padHorPrimIns : other.padHorPrimIns,
      padTopPrimIns: t < 0.5 ? padTopPrimIns : other.padTopPrimIns,
      padBotPrimIns: t < 0.5 ? padBotPrimIns : other.padBotPrimIns,
      padHorSecIns: t < 0.5 ? padHorSecIns : other.padHorSecIns,
      spExtSmall: t < 0.5 ? spExtSmall : other.spExtSmall,
      spSmall: t < 0.5 ? spSmall : other.spSmall,
      spMedium: t < 0.5 ? spMedium : other.spMedium,
      spLarge: t < 0.5 ? spLarge : other.spLarge,
      spExtLarge: t < 0.5 ? spExtLarge : other.spExtLarge,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseDimens &&
            const DeepCollectionEquality()
                .equals(padHorPrim, other.padHorPrim) &&
            const DeepCollectionEquality()
                .equals(padTopPrim, other.padTopPrim) &&
            const DeepCollectionEquality()
                .equals(padBotPrim, other.padBotPrim) &&
            const DeepCollectionEquality().equals(padBotSec, other.padBotSec) &&
            const DeepCollectionEquality()
                .equals(padHorPrimIns, other.padHorPrimIns) &&
            const DeepCollectionEquality()
                .equals(padTopPrimIns, other.padTopPrimIns) &&
            const DeepCollectionEquality()
                .equals(padBotPrimIns, other.padBotPrimIns) &&
            const DeepCollectionEquality()
                .equals(padHorSecIns, other.padHorSecIns) &&
            const DeepCollectionEquality()
                .equals(spExtSmall, other.spExtSmall) &&
            const DeepCollectionEquality().equals(spSmall, other.spSmall) &&
            const DeepCollectionEquality().equals(spMedium, other.spMedium) &&
            const DeepCollectionEquality().equals(spLarge, other.spLarge) &&
            const DeepCollectionEquality()
                .equals(spExtLarge, other.spExtLarge));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(padHorPrim),
      const DeepCollectionEquality().hash(padTopPrim),
      const DeepCollectionEquality().hash(padBotPrim),
      const DeepCollectionEquality().hash(padBotSec),
      const DeepCollectionEquality().hash(padHorPrimIns),
      const DeepCollectionEquality().hash(padTopPrimIns),
      const DeepCollectionEquality().hash(padBotPrimIns),
      const DeepCollectionEquality().hash(padHorSecIns),
      const DeepCollectionEquality().hash(spExtSmall),
      const DeepCollectionEquality().hash(spSmall),
      const DeepCollectionEquality().hash(spMedium),
      const DeepCollectionEquality().hash(spLarge),
      const DeepCollectionEquality().hash(spExtLarge),
    );
  }
}

extension BaseDimensBuildContext on BuildContext {
  BaseDimens get baseDimens => Theme.of(this).extension<BaseDimens>()!;
}

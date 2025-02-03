// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_durations_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseDurationsTailorMixin on ThemeExtension<BaseDurations> {
  Duration get animSwitchPrim;

  @override
  BaseDurations copyWith({
    Duration? animSwitchPrim,
  }) {
    return BaseDurations(
      animSwitchPrim: animSwitchPrim ?? this.animSwitchPrim,
    );
  }

  @override
  BaseDurations lerp(covariant ThemeExtension<BaseDurations>? other, double t) {
    if (other is! BaseDurations) return this as BaseDurations;
    return BaseDurations(
      animSwitchPrim: t < 0.5 ? animSwitchPrim : other.animSwitchPrim,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseDurations &&
            const DeepCollectionEquality()
                .equals(animSwitchPrim, other.animSwitchPrim));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(animSwitchPrim),
    );
  }
}

extension BaseDurationsBuildContext on BuildContext {
  BaseDurations get baseDurations => Theme.of(this).extension<BaseDurations>()!;
}

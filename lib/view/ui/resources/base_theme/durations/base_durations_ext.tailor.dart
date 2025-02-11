// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'base_durations_ext.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$BaseDurationsTailorMixin on ThemeExtension<BaseDurations> {
  Duration get animSwitchPrim;
  Duration get animScrollToTop;
  Duration get searchTrans;

  @override
  BaseDurations copyWith({
    Duration? animSwitchPrim,
    Duration? animScrollToTop,
    Duration? searchTrans,
  }) {
    return BaseDurations(
      animSwitchPrim: animSwitchPrim ?? this.animSwitchPrim,
      animScrollToTop: animScrollToTop ?? this.animScrollToTop,
      searchTrans: searchTrans ?? this.searchTrans,
    );
  }

  @override
  BaseDurations lerp(covariant ThemeExtension<BaseDurations>? other, double t) {
    if (other is! BaseDurations) return this as BaseDurations;
    return BaseDurations(
      animSwitchPrim: t < 0.5 ? animSwitchPrim : other.animSwitchPrim,
      animScrollToTop: t < 0.5 ? animScrollToTop : other.animScrollToTop,
      searchTrans: t < 0.5 ? searchTrans : other.searchTrans,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseDurations &&
            const DeepCollectionEquality()
                .equals(animSwitchPrim, other.animSwitchPrim) &&
            const DeepCollectionEquality()
                .equals(animScrollToTop, other.animScrollToTop) &&
            const DeepCollectionEquality()
                .equals(searchTrans, other.searchTrans));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(animSwitchPrim),
      const DeepCollectionEquality().hash(animScrollToTop),
      const DeepCollectionEquality().hash(searchTrans),
    );
  }
}

extension BaseDurationsBuildContext on BuildContext {
  BaseDurations get baseDurations => Theme.of(this).extension<BaseDurations>()!;
}

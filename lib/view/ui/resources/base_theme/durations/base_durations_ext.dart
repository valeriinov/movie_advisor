import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'base_durations.dart';

part 'base_durations_ext.tailor.dart';

abstract final class BaseDurationsFactory {
  static BaseDurations createDurations() {
    return BaseDurations(
      animSwitchPrim: _BaseDurations.animSwitchPrim,
    );
  }
}

@TailorMixin()
class BaseDurations extends ThemeExtension<BaseDurations>
    with _$BaseDurationsTailorMixin {
  /// Primary duration for switching animations.
  @override
  final Duration animSwitchPrim;

  BaseDurations({
    required this.animSwitchPrim,
  });
}

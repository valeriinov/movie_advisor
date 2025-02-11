import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'base_durations.dart';

part 'base_durations_ext.tailor.dart';

abstract final class BaseDurationsFactory {
  static BaseDurations createDurations() {
    return BaseDurations(
      animSwitchPrim: _BaseDurations.animSwitchPrim,
      animScrollToTop: _BaseDurations.animScrollToTop,
      searchTrans: _BaseDurations.searchTrans,
    );
  }
}

@TailorMixin()
class BaseDurations extends ThemeExtension<BaseDurations>
    with _$BaseDurationsTailorMixin {
  /// Primary duration for switching animations.
  @override
  final Duration animSwitchPrim;

  /// Duration for scrolling to the top of the screen.
  @override
  final Duration animScrollToTop;

  /// Duration for search field transitions.
  @override
  final Duration searchTrans;

  BaseDurations({
    required this.animSwitchPrim,
    required this.animScrollToTop,
    required this.searchTrans,
  });
}

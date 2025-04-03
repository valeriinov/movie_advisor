import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../../resources/base_theme/durations/base_durations_ext.dart';

class KeyboardOpenedBottomGap extends StatelessWidget {
  const KeyboardOpenedBottomGap({super.key});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverToBoxAdapter(
      child: AnimatedSize(
        duration: durations.animSwitchPrim,
        child: KeyboardVisibilityBuilder(
          builder:
              (_, isVisible) =>
                  isVisible ? SizedBox(height: 40) : SizedBox.shrink(),
        ),
      ),
    );
  }
}

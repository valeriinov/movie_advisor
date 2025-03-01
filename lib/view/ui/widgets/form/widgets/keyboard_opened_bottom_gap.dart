import 'package:flutter/material.dart';

import '../../../resources/base_theme/durations/base_durations_ext.dart';

class KeyboardOpenedBottomGap extends StatelessWidget {
  final bool isKeyboardOpened;

  const KeyboardOpenedBottomGap({super.key, required this.isKeyboardOpened});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverToBoxAdapter(
      child: AnimatedSize(
        duration: durations.animSwitchPrim,
        child: isKeyboardOpened ? SizedBox(height: 40) : SizedBox.shrink(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';
import '../resources/base_theme/durations/base_durations_ext.dart';

class SubmitButtonWithLoader extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? isLoading;
  final Widget child;

  const SubmitButtonWithLoader({
    super.key,
    required this.onPressed,
    this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;
    final durations = context.baseDurations;

    return AnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: isLoading == true
          ? FilledButton(
              style: FilledButton.styleFrom(
                disabledBackgroundColor: colors.btnFillPrimBg,
                disabledForegroundColor: colors.btnFillPrimFg,
              ),
              onPressed: null,
              child: Center(
                child: CircularProgressIndicator(color: colors.btnFillPrimFg),
              ),
            )
          : FilledButton(onPressed: onPressed, child: child),
    );
  }
}

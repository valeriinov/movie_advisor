import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../resources/base_theme/colors/base_colors_ext.dart';
import 'more_screen_content.dart';

class MoreContentSkeleton extends StatelessWidget {
  const MoreContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Skeletonizer(
      effect: PulseEffect(from: colors.skeletonFrom, to: colors.skeletonTo),
      child: MoreScreenContent(),
    );
  }
}

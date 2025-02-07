import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../common/mock/mock_media_short.dart';
import '../../resources/base_theme/colors/base_colors_ext.dart';
import 'suggestions_container.dart';

class HomeContentSkeleton extends StatelessWidget {
  const HomeContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    final suggestions = MockMediaShort.createMediaShortDataList(5);

    return SliverSkeletonizer(
      effect: PulseEffect(
        from: colors.skeletonFrom,
        to: colors.skeletonTo,
      ),
      child: MultiSliver(
        children: [
          SuggestionsContainer(
            suggestions: suggestions,
          ),
        ],
      ),
    );
  }
}

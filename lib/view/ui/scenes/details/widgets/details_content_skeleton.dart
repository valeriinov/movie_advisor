import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../common/mock/mock_media.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../details_view_model/details_state.dart';
import '../model/details_tab.dart';
import 'details_screen_content.dart';

class DetailsContentSkeleton extends StatelessWidget {
  final bool isMovie;

  const DetailsContentSkeleton({super.key, required this.isMovie});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    final data = isMovie
        ? MockMedia.createMovieData()
        : MockMedia.createSeriesData();

    return Skeletonizer(
      effect: PulseEffect(from: colors.skeletonFrom, to: colors.skeletonTo),
      child: DetailsScreenContent(
        data: data,
        status: DetailsBaseStatus(),
        currentTab: DetailsTab.about,
        onRefresh: () async {},
        onTabSelect: (_) {},
      ),
    );
  }
}

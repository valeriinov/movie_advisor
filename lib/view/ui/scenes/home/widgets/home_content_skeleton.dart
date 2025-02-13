import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../common/mock/mock_media_short.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../base/media_load_info.dart';
import '../model/media_tab.dart';
import 'home_screen_content.dart';

class HomeContentSkeleton extends StatelessWidget {
  const HomeContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    final suggestionsContent = MockMediaShort.createMediaShortDataList(5);
    final tabMedia = MockMediaShort.createMediaShortDataList(6);

    return SliverSkeletonizer(
      effect: PulseEffect(
        from: colors.skeletonFrom,
        to: colors.skeletonTo,
      ),
      child: HomeScreenContent(
        isSkeletonVisible: true,
        suggestionsContent: suggestionsContent,
        currentTab: MediaTab.nowPlaying,
        tabContent:
            MediaLoadInfo(mediaData: ListWithPaginationData(items: tabMedia)),
        onTabSelect: (_) {},
        onSuggestionItemSelect: (_) {},
        onTabItemSelect: (_) {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../common/mock/mock_media_short.dart';
import '../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../resources/base_theme/colors/base_colors_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../scenes/home/model/media_load_info.dart';
import '../../scenes/home/model/media_tab.dart';
import '../tabs/app_tabs.dart';
import 'home_tab_content.dart';
import 'suggestions_container.dart';

class HomeContentSkeleton extends StatelessWidget {
  const HomeContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;

    final suggestions = MockMediaShort.createMediaShortDataList(5);
    final tabMovies = MockMediaShort.createMediaShortDataList(6);

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
          SliverPadding(padding: dimens.spExtLarge.insTop()),
          AppTabs(
            tabs: MediaTab.descriptions,
            currentIndex: MediaTab.nowPlaying.index,
            onSelect: (_) {},
          ),
          HomeTabContent(
            isSkeletonVisible: true,
            mediaLoadInfo: MediaLoadInfo(
                mediaData: ListWithPaginationData(items: tabMovies)),
            onTap: (id) {}, // TODO: Go to movie details
          )
        ],
      ),
    );
  }
}

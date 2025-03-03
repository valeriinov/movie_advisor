import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../common/mock/mock_media_short.dart';
import '../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../base/media_load_info.dart';
import '../../resources/base_theme/colors/base_colors_ext.dart';
import 'watch_screen_content.dart';

class WatchContentSkeleton extends StatelessWidget {
  const WatchContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    final media = MockMediaShort.createMediaShortDataList(1);

    return Skeletonizer(
      effect: PulseEffect(from: colors.skeletonFrom, to: colors.skeletonTo),
      child: WatchScreenContent(
        isInitialized: true,
        isLoading: false,
        watchlist: MediaLoadInfo(
          mediaData: ListWithPaginationData(items: media),
        ),
        emptyListTitle: '',
        emptyListSubtitle: '',
        onItemSelect: (_) {},
        onRefresh: () async {},
      ),
    );
  }
}

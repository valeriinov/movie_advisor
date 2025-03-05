import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../base/media_load_info.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../widgets/empty_list_container.dart';
import 'home_tab_grid.dart';

class HomeTabContent extends StatelessWidget {
  final bool isSkeletonVisible;
  final MediaLoadInfo<MediaShortData> mediaLoadInfo;
  final String emptyListTitle;
  final String emptyListSubtitle;
  final void Function(int id)? onTap;

  const HomeTabContent({
    super.key,
    required this.isSkeletonVisible,
    required this.mediaLoadInfo,
    required this.emptyListTitle,
    required this.emptyListSubtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: switch (_isLoaderVisible()) {
        true => _buildLoader(context),
        false when mediaLoadInfo.mediaData.items.isEmpty => _buildEmptyList(),
        _ => HomeTabGrid(mediaLoadInfo: mediaLoadInfo, onTap: onTap),
      },
    );
  }

  Widget _buildLoader(BuildContext context) {
    return SliverFillRemaining(
      child: SizedBox(
        height: context.height,
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }

  bool _isLoaderVisible() {
    final isTabInitialized = mediaLoadInfo.isInitialized;

    return !isSkeletonVisible && !isTabInitialized;
  }

  Widget _buildEmptyList() {
    return SliverToBoxAdapter(
      child: EmptyListContainer(
        imagePath: AppImages.errorListImage,
        title: emptyListTitle,
        subtitle: emptyListSubtitle,
      ),
    );
  }
}

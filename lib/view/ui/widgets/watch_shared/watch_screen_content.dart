import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../base/media_load_info.dart';
import '../../resources/app_images.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/base_theme/durations/base_durations_ext.dart';
import '../next_page_loader.dart';
import '../sliver_empty_list_container.dart';
import '../sliver_fill_loader.dart';
import '../sliver_refresh_indicator.dart';
import 'watch_items.dart';

class WatchScreenContent extends StatelessWidget {
  final bool isLoading;
  final bool isInitialized;
  final MediaLoadInfo<MediaShortData> watchlist;
  final String emptyListTitle;
  final String emptyListSubtitle;
  final Widget? floatingBar;
  final void Function(int id)? onItemSelect;
  final Future<void> Function()? onRefresh;
  final ScrollController? scrollController;

  bool get _hasEmptyList {
    return watchlist.mediaData.items.isEmpty && isInitialized;
  }

  const WatchScreenContent({
    super.key,
    required this.isLoading,
    required this.isInitialized,
    required this.watchlist,
    required this.emptyListTitle,
    required this.emptyListSubtitle,
    this.floatingBar,
    this.onItemSelect,
    this.onRefresh,
    this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final dimens = context.baseDimens;

    final isNextPageLoading = watchlist.isNextPageLoading;

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        if (floatingBar != null) floatingBar!,
        SliverPadding(
          padding: dimens.padHorPrimIns,
          sliver: SliverAnimatedSwitcher(
            duration: durations.animSwitchPrim,
            child: switch (_hasEmptyList) {
              true => _buildEmptyList(),
              false when isLoading => SliverFillLoader(),
              _ => MultiSliver(
                children: [
                  SliverRefreshIndicator(onRefresh: onRefresh),
                  SliverPadding(padding: (dimens.spLarge / 2).insTop()),
                  WatchItems(
                    media: watchlist.mediaData.items,
                    onItemSelect: onItemSelect,
                  ),
                  if (isNextPageLoading) NextPageLoader(),
                  SliverPadding(padding: dimens.padBotPrimIns),
                ],
              ),
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyList() {
    return MultiSliver(
      children: [
        SliverRefreshIndicator(onRefresh: onRefresh),
        SliverEmptyListContainer(
          imagePath: AppImages.emptyListImage,
          title: emptyListTitle,
          subtitle: emptyListSubtitle,
        ),
      ],
    );
  }
}

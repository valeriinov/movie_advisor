import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../details_view_model/details_state.dart';
import '../model/details_tab.dart';
import 'details_actions_container.dart';
import 'details_header.dart';
import 'details_props_container.dart';
import 'details_tab_content.dart';

class DetailsScreenContent extends StatelessWidget {
  final MediaData data;
  final DetailsTab currentTab;
  final DetailsStatus status;
  final ScrollController? scrollController;
  final Future<void> Function()? onRefresh;
  final void Function(int index)? onTabSelect;
  final VoidCallback? onWatchlistTap;
  final VoidCallback? onWatchedTap;

  const DetailsScreenContent({
    super.key,
    required this.data,
    required this.currentTab,
    required this.status,
    this.scrollController,
    this.onRefresh,
    this.onTabSelect,
    this.onWatchlistTap,
    this.onWatchedTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverRefreshIndicator(onRefresh: onRefresh),
        DetailsHeader(data: data),
        SliverPadding(padding: 12.insVert()),
        DetailsActionsContainer(
          data: data,
          status: status,
          onWatchlistTap: onWatchlistTap,
          onWatchedTap: onWatchedTap,
        ),
        SliverPadding(padding: dimens.spMedium.insVert()),
        DetailsPropsContainer(data: data),
        SliverPadding(padding: dimens.spMedium.insVert()),
        AppTabs(
          tabs: DetailsTab.descriptions,
          currentIndex: currentTab.index,
          onSelect: onTabSelect,
          isPinned: false,
          isSkeletonKeep: false,
        ),
        SliverPadding(padding: dimens.spSmall.insVert()),
        DetailsTabContent(data: data, currentTab: currentTab),
        SliverPadding(padding: dimens.padBotPrim.insBottom()),
      ],
    );
  }
}

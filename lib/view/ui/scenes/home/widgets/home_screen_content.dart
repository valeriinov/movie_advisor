import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../base/media_load_info.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/next_page_loader.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../model/media_tab.dart';
import 'home_tab_content.dart';
import 'suggestions_container.dart';

class HomeScreenContent extends StatelessWidget {
  final bool isSkeletonVisible;
  final List<MediaShortData> suggestionsContent;
  final MediaLoadInfo<MediaShortData> tabContent;
  final MediaTab currentTab;
  final void Function(int index)? onTabSelect;
  final void Function(int id)? onSuggestionItemSelect;
  final void Function(int id)? onTabItemSelect;
  final Future<void> Function()? onRefresh;

  const HomeScreenContent({
    super.key,
    required this.isSkeletonVisible,
    required this.suggestionsContent,
    required this.currentTab,
    required this.tabContent,
    this.onTabSelect,
    this.onSuggestionItemSelect,
    this.onTabItemSelect,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final isNextPageLoading = tabContent.isNextPageLoading;

    return MultiSliver(
      children: [
        SliverRefreshIndicator(
          onRefresh: onRefresh,
        ),
        SliverPadding(padding: (dimens.spLarge / 2).insBottom()),
        SuggestionsContainer(
          suggestions: suggestionsContent,
          onTap: onSuggestionItemSelect,
        ),
        SliverPadding(padding: dimens.spExtLarge.insTop()),
        AppTabs(
          tabs: MediaTab.descriptions,
          currentIndex: currentTab.index,
          onSelect: onTabSelect,
        ),
        SliverPadding(padding: (dimens.spLarge / 2).insTop()),
        HomeTabContent(
            isSkeletonVisible: isSkeletonVisible,
            mediaLoadInfo: tabContent,
            onTap: onTabItemSelect),
        if (isNextPageLoading) NextPageLoader(),
      ],
    );
  }
}

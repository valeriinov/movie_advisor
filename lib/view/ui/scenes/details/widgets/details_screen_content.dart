import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import '../../../widgets/tabs/app_tabs.dart';
import '../model/details_tab.dart';
import 'details_header.dart';
import 'details_props_container.dart';
import 'details_tab_content.dart';

class DetailsScreenContent extends StatelessWidget {
  final MediaData data;
  final DetailsTab currentTab;
  final Future<void> Function()? onRefresh;
  final void Function(int index)? onTabSelect;

  const DetailsScreenContent({
    super.key,
    required this.data,
    required this.currentTab,
    this.onRefresh,
    this.onTabSelect,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return CustomScrollView(
      slivers: [
        SliverRefreshIndicator(
          onRefresh: onRefresh,
        ),
        DetailsHeader(data: data),
        SliverPadding(padding: dimens.spMedium.insVert()),
        DetailsPropsContainer(data: data),
        SliverPadding(padding: dimens.spMedium.insVert()),
        AppTabs(
          tabs: DetailsTab.descriptions,
          currentIndex: currentTab.index,
          onSelect: onTabSelect,
        ),
        SliverPadding(padding: dimens.spSmall.insVert()),
        DetailsTabContent(
          data: data,
          currentTab: currentTab,
        ),
        SliverPadding(padding: dimens.padBotPrim.insBottom())
      ],
    );
  }
}

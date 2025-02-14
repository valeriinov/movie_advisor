import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../model/details_tab.dart';
import 'about_tab_content.dart';
import 'cast_tab_content.dart';

class DetailsTabContent extends StatelessWidget {
  final MediaData data;
  final DetailsTab currentTab;

  const DetailsTabContent({
    super.key,
    required this.data,
    required this.currentTab,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: _getTabContent(),
    );
  }

  Widget _getTabContent() {
    return switch (currentTab) {
      DetailsTab.about => AboutTabContent(overview: data.overview),
      DetailsTab.cast => CastTabContent(),
    };
  }
}

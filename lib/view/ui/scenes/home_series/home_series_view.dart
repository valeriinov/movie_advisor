import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../widgets/home_shared/home_content_skeleton.dart';
import '../../widgets/home_shared/home_content_view.dart';
import '../home/model/media_tab.dart';
import 'home_series_view_model/home_series_view_model.dart';

class HomeSeriesView extends ConsumerWidget {
  const HomeSeriesView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(homeSeriesViewModelPr);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => isInitialized);
    });

    final currentTab = vsp.selectWatch((s) => s.currentTab);
    final tabContent = vsp.selectWatch((s) => s.tabSeries);
    final suggestionsContent =
        vsp.selectWatch((s) => s.suggestedSeries.mediaData.items);

    return isSkeletonVisible
        ? HomeContentSkeleton()
        : HomeContentView(
            isSkeletonVisible: isSkeletonVisible,
            suggestionsContent: suggestionsContent,
            currentTab: currentTab,
            tabContent: tabContent,
            // TODO: Go to series details
            onTabSelect: (id) {},
            // TODO: Go to series details
            onSuggestionItemSelect: (id) {},
            onTabItemSelect: (index) => _onTabSelect(vsp, index),
          );
  }

  void _onTabSelect(HomeSeriesVSP vsp, int index) {
    final tab = MediaTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

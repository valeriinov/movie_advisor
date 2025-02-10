import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/utils/scroll_pagination_controller.dart';
import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../widgets/home_shared/home_content_skeleton.dart';
import '../../widgets/home_shared/home_content_view.dart';
import '../home/model/media_tab.dart';
import 'home_series_view_model/home_series_view_model.dart';

class HomeSeriesView extends HookConsumerWidget {
  final ScrollController scrollController;

  const HomeSeriesView({super.key, required this.scrollController});

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

    useEffect(() {
      final paginationCtrl =
      AppScrollPaginationController(scrollController: scrollController);

      paginationCtrl.init(
        getPaginationState: () => _getPaginationState(vsp),
        loadNextPage: vsp.viewModel.loadTabNextPage,
      );

      return paginationCtrl.dispose;
    }, [currentTab]);

    return isSkeletonVisible
        ? HomeContentSkeleton()
        : HomeContentView(
            isSkeletonVisible: isSkeletonVisible,
            suggestionsContent: suggestionsContent,
            currentTab: currentTab,
            tabContent: tabContent,
            onTabSelect: (index) => _onTabSelect(vsp, index),
            // TODO: Go to series details
            onSuggestionItemSelect: (id) {},
            // TODO: Go to series details
            onTabItemSelect: (id) {},
          );
  }

  AppPaginationState _getPaginationState(HomeSeriesVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.tabSeries);

    return AppPaginationState(
      currentPage: loadInfo.mediaData.currentPage,
      isLoading: loadInfo.isNextPageLoading,
      isLastPage: loadInfo.mediaData.isLastPage,
    );
  }

  void _onTabSelect(HomeSeriesVSP vsp, int index) {
    final tab = MediaTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

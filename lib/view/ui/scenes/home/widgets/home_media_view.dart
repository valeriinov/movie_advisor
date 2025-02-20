import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/utils/scroll_pagination_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../home_view_model/home_view_model.dart';
import '../model/media_tab.dart';
import '../utils/jump_to_tab_start_position.dart';
import 'home_content_skeleton.dart';
import 'home_screen_content.dart';

class HomeMediaView<T extends MediaShortData> extends HookConsumerWidget
    with JumpToTabStartPosition {
  final ScrollController scrollController;
  final HomeVMProvider<T> provider;
  final ContentMode contentMode;

  const HomeMediaView({
    super.key,
    required this.scrollController,
    required this.provider,
    required this.contentMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vsp = ref.vspFromADProvider(provider);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => isInitialized,
        );
      },
    );

    final currentTab = vsp.selectWatch((s) => s.currentTab);
    final tabContent = vsp.selectWatch((s) => s.tabCont);
    final suggestionsContent = vsp.selectWatch(
      (s) => s.sugCont.mediaData.items,
    );

    useEffect(() {
      final paginationCtrl = ScrollPaginationController(
        scrollController: scrollController,
      );

      paginationCtrl.init(
        getPaginationState: () => _getPaginationState(vsp),
        loadNextPage: vsp.viewModel.loadTabNextPage,
      );

      return paginationCtrl.dispose;
    }, []);

    useEffect(() {
      jumpToTabStartPosition(
        scrollController: scrollController,
        isTabInitialized: tabContent.isInitialized,
      );
      return null;
    }, [tabContent.isInitialized]);

    return isSkeletonVisible
        ? HomeContentSkeleton()
        : HomeScreenContent(
          onRefresh:
              !isLoading
                  ? () => vsp.viewModel.loadInitialData(showLoader: false)
                  : null,
          isSkeletonVisible: isSkeletonVisible,
          suggestionsContent: suggestionsContent,
          currentTab: currentTab,
          tabContent: tabContent,
          onTabSelect: (index) => _onTabSelect(vsp, index),
          onSuggestionItemSelect: (id) => _goToDetails(context, id),
          onTabItemSelect: (id) => _goToDetails(context, id),
        );
  }

  PaginationState _getPaginationState(HomeVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.tabCont);
    return PaginationState(
      currentPage: loadInfo.mediaData.currentPage,
      isLoading: loadInfo.isNextPageLoading,
      isLastPage: loadInfo.mediaData.isLastPage,
    );
  }

  void _onTabSelect(HomeVSP vsp, int index) {
    final tab = MediaTab.fromIndex(index);
    vsp.viewModel.updateCurrentTab(tab);
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: contentMode).push(context);
  }
}

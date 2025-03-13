import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/utils/scroll_pagination_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/refresh_view_model/refresh_state.dart';
import '../../../base/refresh_view_model/refresh_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../resources/locale_keys.g.dart';
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

    final refreshVsp = ref.vspFromADProvider(refreshViewModelPr);

    refreshVsp.handleState(
      listener: (prev, next) {
        if (_isLangUpdated(prev, next)) {
          vsp.viewModel.loadInitialData(showLoader: false);
          scrollController.jumpTo(0);
        }
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
          emptyTabListTitle:
              contentMode.isMovies
                  ? LocaleKeys.emptyTabMoviesTitle.tr()
                  : LocaleKeys.emptyTabSeriesTitle.tr(),
          emptySuggestionsListTitle:
              contentMode.isMovies
                  ? LocaleKeys.emptySuggestionsMoviesTitle.tr()
                  : LocaleKeys.emptySuggestionsSeriesTitle.tr(),
          emptyListSubtitle: LocaleKeys.homeEmptyListSubtitle.tr(),
          isSkeletonVisible: isSkeletonVisible,
          suggestionsContent: suggestionsContent,
          currentTab: currentTab,
          tabContent: tabContent,
          onTabSelect: (index) => _onTabSelect(vsp, index),
          onSuggestionItemSelect: (id) => _goToDetails(context, id),
          onTabItemSelect: (id) => _goToDetails(context, id),
        );
  }

  bool _isLangUpdated(RefreshState? prev, RefreshState next) {
    return next.isUpdate(prev, (s) => s?.status) &&
        next.status is LangUpdatedStatus;
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

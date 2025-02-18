import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/scroll_pagination_controller.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/blurred_bottom_sheet.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../../../widgets/watch_shared/watch_app_bar.dart';
import '../../../widgets/watch_shared/watch_content_skeleton.dart';
import '../../../widgets/watch_shared/watch_screen_content.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_filter_bottom_sheet.dart';

class WatchedSeriesView extends HookConsumerWidget {
  const WatchedSeriesView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(watchedSeriesViewModelPr);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => false);
    });

    final scrollController = useScrollController();

    useEffect(() {
      final paginationCtrl = _initPaginationController(vsp, scrollController);

      return paginationCtrl.dispose;
    }, []);

    final watched = vsp.selectWatch((s) => s.watched);

    return ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            appBar: WatchAppBar(
              title: LocaleKeys.watchedSeriesScreenTitle.tr(),
              onMoreTap: () => _onMoreTap(context),
            ),
            body: isSkeletonVisible
                ? WatchContentSkeleton()
                : WatchScreenContent(
                    isLoading: isLoading,
                    isInitialized: isInitialized,
                    watchlist: watched,
                    emptyListTitle: LocaleKeys.emptyWatchedSeriesTitle.tr(),
                    emptyListSubtitle:
                        LocaleKeys.emptyWatchedSeriesSubtitle.tr(),
                    scrollController: scrollController,
                    onItemSelect: (id) => _goToDetails(context, id),
                    onRefresh: !isLoading
                        ? () => vsp.viewModel.loadInitialData(showLoader: false)
                        : null,
                  ),
            floatingActionButton: isFabVisible
                ? ScrollTopFab(scrollController: scrollController)
                : null,
          );
        });
  }

  AppScrollPaginationController _initPaginationController(
    WatchedSeriesVSP vsp,
    ScrollController scrollController,
  ) {
    final paginationCtrl =
        AppScrollPaginationController(scrollController: scrollController);

    paginationCtrl.init(
      getPaginationState: () => _getPaginationState(vsp),
      loadNextPage: vsp.viewModel.loadNextPage,
    );

    return paginationCtrl;
  }

  AppPaginationState _getPaginationState(WatchedSeriesVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.watched);

    return AppPaginationState(
      currentPage: loadInfo.mediaData.currentPage,
      isLoading: loadInfo.isNextPageLoading,
      isLastPage: loadInfo.mediaData.isLastPage,
    );
  }

  void _onMoreTap(BuildContext context) {
    showBlurredBottomSheet(
      isDismissible: false,
      useRootNavigator: true,
      context: context,
      child: WatchedFilterBottomSheet(),
    );
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: ContentMode.series).push(context);
  }
}

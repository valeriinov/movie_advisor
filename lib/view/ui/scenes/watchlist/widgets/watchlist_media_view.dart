import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/utils/scroll_pagination_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/watchlist_filter/watchlist_filter_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_bar/widgets/content_mode_switch.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../../../widgets/watch_shared/watch_screen_content.dart';
import '../watchlist_view_model/watchlist_view_model.dart';
import 'watchlist_floating_bar_container.dart';

class WatchlistMediaView<
  T extends MediaShortData,
  F extends WatchlistFilterData
>
    extends HookConsumerWidget {
  final WatchlistVMProvider<T, F> provider;
  final ContentMode contentMode;
  final String screenTitle;
  final String emptyListTitle;
  final String emptyListSubtitle;

  const WatchlistMediaView({
    super.key,
    required this.provider,
    required this.contentMode,
    required this.screenTitle,
    required this.emptyListTitle,
    required this.emptyListSubtitle,
  });

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADProvider(contentModeViewModelPr);

    final contMode = vspContMode.selectWatch((s) => s.mode);

    final vsp = ref.vspFromADProvider(provider);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => false,
        );
      },
    );

    final scrollController = useScrollController();

    useEffect(() {
      final paginationCtrl = _initPaginationController(vsp, scrollController);

      return paginationCtrl.dispose;
    }, []);

    final watchlist = vsp.selectWatch((s) => s.watchlist);

    return ScrollTopListener(
      scrollController: scrollController,
      builder: (_, isFabVisible) {
        return Scaffold(
          appBar: MainAppBar(
            title: Text(screenTitle),
            actions: [
              ContentModeSwitch(
                contentMode: contMode,
                toggleMode: vspContMode.viewModel.toggleMode,
              ),
            ],
          ),
          body: WatchScreenContent(
            isLoading: isLoading,
            isInitialized: isInitialized,
            watchlist: watchlist,
            emptyListTitle: emptyListTitle,
            emptyListSubtitle: emptyListSubtitle,
            scrollController: scrollController,
            onItemSelect: (id) => _goToDetails(context, id),
            onRefresh: !isLoading
                ? () => vsp.viewModel.loadInitialData(showLoader: false)
                : null,
            floatingBar: WatchlistFloatingBarContainer(provider: provider),
          ),
          floatingActionButton: isFabVisible
              ? ScrollTopFab(scrollController: scrollController)
              : null,
        );
      },
    );
  }

  ScrollPaginationController _initPaginationController(
    WatchlistVSP vsp,
    ScrollController scrollController,
  ) {
    final paginationCtrl = ScrollPaginationController(
      scrollController: scrollController,
    );

    paginationCtrl.init(
      getPaginationState: () => _getPaginationState(vsp),
      loadNextPage: vsp.viewModel.loadNextPage,
    );

    return paginationCtrl;
  }

  PaginationState _getPaginationState(WatchlistVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.watchlist);

    return PaginationState(
      currentPage: loadInfo.mediaData.currentPage,
      isLoading: loadInfo.isNextPageLoading,
      isLastPage: loadInfo.mediaData.isLastPage,
    );
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: contentMode).push(context);
  }
}

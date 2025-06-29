import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/utils/scroll_pagination_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/watched_default_filter.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/watched_filter/movies_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/series_watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/watched_filter_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_bar/widgets/content_mode_switch.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../../../widgets/watch_shared/watch_screen_content.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_floating_bar_container.dart';

class WatchedMediaView<T extends MediaShortData, F extends WatchedFilterData>
    extends HookConsumerWidget {
  final WatchedVMProvider<T, F> provider;
  final ContentMode contentMode;
  final String screenTitle;
  final String emptyListTitle;
  final String emptyListSubtitle;

  const WatchedMediaView({
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

    vspContMode.handleState(
      listener: (prev, next) {
        if (next.isUpdate(prev, (s) => s?.mode)) {
          scrollController.jumpTo(0);
        }
      },
    );

    useEffect(() {
      final paginationCtrl = _initPaginationController(vsp, scrollController);

      return paginationCtrl.dispose;
    }, []);

    final watched = vsp.selectWatch((s) => s.watched);
    final filter = vsp.selectWatch((s) => s.filter);

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
            watchlist: watched,
            emptyListTitle: emptyListTitle,
            emptyListSubtitle: emptyListSubtitle,
            scrollController: scrollController,
            isDefaultFilter: _isDefaultFilter(filter),
            onItemSelect: (id) => _goToDetails(context, id),
            onRefresh: !isLoading
                ? () => vsp.viewModel.loadInitialData(showLoader: false)
                : null,
            floatingBar: WatchedFloatingBarContainer(provider: provider),
          ),
          floatingActionButton: isFabVisible
              ? ScrollTopFab(scrollController: scrollController)
              : null,
        );
      },
    );
  }

  bool _isDefaultFilter(F filter) {
    return switch (filter) {
      MoviesWatchedFilterData f => f.isDefault,
      SeriesWatchedFilterData f => f.isDefault,
      _ => true,
    };
  }

  ScrollPaginationController _initPaginationController(
    WatchedVSP vsp,
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

  PaginationState _getPaginationState(WatchedVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.watched);

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

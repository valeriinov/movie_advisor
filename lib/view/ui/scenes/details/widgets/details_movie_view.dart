import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../details_view_model/details_view_model.dart';
import '../model/details_tab.dart';
import 'details_app_bar.dart';
import 'details_content_skeleton.dart';
import 'details_screen_content.dart';

class DetailsMovieView extends HookConsumerWidget {
  final int id;

  const DetailsMovieView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(
      detailsMovieViewModelPr(id),
    );

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => isInitialized);
    });

    final data = vsp.selectWatch((s) => s.data);
    final currentTab = vsp.selectWatch((s) => s.currentTab);

    final scrollController = useScrollController();

    return ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            appBar: DetailsAppBar(
              title: LocaleKeys.detailsMovieScreenTitle.tr(),
              isInWatchlist: data.isInWatchlist,
              isWatched: data.isWatched,
              onWatchlistTap:
                  isSkeletonVisible ? null : () => _onWatchlistTap(vsp),
              // TODO: Implement onWatchedTap
              onWatchedTap: isSkeletonVisible ? null : () {},
            ),
            body: isSkeletonVisible
                ? DetailsContentSkeleton()
                : DetailsScreenContent(
                    data: data,
                    currentTab: currentTab,
                    scrollController: scrollController,
                    onTabSelect: (index) => _onTabSelect(vsp, index),
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

  void _onWatchlistTap(DetailsMovieVSP vsp) {
    final isInWatchlist = vsp.selectRead((s) => s.data.isInWatchlist);

    if (isInWatchlist) {
      vsp.viewModel.removeFromWatchlist();
    } else {
      vsp.viewModel.addToWatchlist();
    }
  }

  void _onTabSelect(DetailsMovieVSP vsp, int index) {
    final tab = DetailsTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

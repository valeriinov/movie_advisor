import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../widgets/home_shared/home_content_skeleton.dart';
import '../../widgets/home_shared/home_tab_content.dart';
import '../../widgets/home_shared/suggestions_container.dart';
import '../../widgets/tabs/app_tabs.dart';
import '../home/model/media_tab.dart';
import 'home_movies_view_model/home_movies_view_model.dart';

class HomeMoviesView extends ConsumerWidget {
  const HomeMoviesView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(homeMoviesViewModelPr);

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => isInitialized);
    });

    final currentTab = vsp.selectWatch((s) => s.currentTab);
    final tabMovies = vsp.selectWatch((s) => s.tabMovies);

    final suggestionsContent =
        vsp.selectWatch((s) => s.suggestedMovies.mediaData.items);

    return isSkeletonVisible
        ? HomeContentSkeleton()
        : MultiSliver(
            children: [
              SuggestionsContainer(
                suggestions: suggestionsContent,
                onTap: (id) {}, // TODO: Go to movie details
              ),
              SliverPadding(padding: dimens.spExtLarge.insTop()),
              AppTabs(
                tabs: MediaTab.descriptions,
                currentIndex: currentTab.index,
                onSelect: (index) => _onTabSelect(vsp, index),
              ),
              SliverPadding(padding: dimens.spMedium.insTop()),
              HomeTabContent(
                isSkeletonVisible: isSkeletonVisible,
                mediaLoadInfo: tabMovies,
                onTap: (id) {}, // TODO: Go to movie details
              )
            ],
          );
  }

  void _onTabSelect(HomeMoviesVSP vsp, int index) {
    final tab = MediaTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

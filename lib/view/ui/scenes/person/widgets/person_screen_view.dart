import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../widgets/bottom_safe_area.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../../../widgets/system_overlay_style_wrapper.dart';
import '../model/person_tab.dart';
import '../person_view_model/person_view_model.dart';
import 'person_content_skeleton.dart';
import 'person_screen_content.dart';

class PersonScreenView extends HookConsumerWidget {
  final int id;

  const PersonScreenView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final colors = context.baseColors;

    final vsp = ref.vspFromADFProvider(personViewModelPr(id));

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => false,
        );
      },
    );

    final person = vsp.selectWatch((s) => s.person);
    final currentTab = vsp.selectWatch((s) => s.currentTab);

    final scrollController = useScrollController();

    return SystemOverlayStyleWrapper(
      statusBarColor: Colors.transparent,
      colors: colors,
      child: ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            body: BottomSafeArea(
              child: isSkeletonVisible
                  ? PersonContentSkeleton()
                  : PersonScreenContent(
                      person: person,
                      currentTab: currentTab,
                      onTabSelect: (index) => _onTabSelect(vsp, index),
                      onRefresh: !isLoading
                          ? () =>
                                vsp.viewModel.loadInitialData(showLoader: false)
                          : null,
                      scrollController: scrollController,
                    ),
            ),
            floatingActionButton: isFabVisible
                ? ScrollTopFab(scrollController: scrollController)
                : null,
          );
        },
      ),
    );
  }

  void _onTabSelect(PersonAFSP vsp, int index) {
    final tab = PersonTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

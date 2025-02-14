import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../details_view_model/details_view_model.dart';
import '../model/details_tab.dart';
import 'details_screen_content.dart';

class DetailsSeriesView extends ConsumerWidget {
  final int id;

  const DetailsSeriesView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(
      detailsSeriesViewModelPr(id),
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

    return Scaffold(
      appBar: MainAppBar(
        title: Text(LocaleKeys.detailsSeriesScreenTitle.tr()),
      ),
      body: DetailsScreenContent(
        data: data,
        currentTab: currentTab,
        onTabSelect: (index) => _onTabSelect(vsp, index),
        onRefresh: !isLoading
            ? () => vsp.viewModel.loadInitialData(showLoader: false)
            : null,
      ),
    );
  }

  void _onTabSelect(DetailsSeriesVSP vsp, int index) {
    final tab = DetailsTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }
}

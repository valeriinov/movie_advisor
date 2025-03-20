import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/blurred_bottom_sheet.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../details_view_model/details_state.dart';
import '../details_view_model/details_view_model.dart';
import '../model/details_tab.dart';
import 'details_content_skeleton.dart';
import 'details_screen_content.dart';
import 'rate_bottom_sheet.dart';

class DetailsMediaView<T extends MediaData, S extends MediaShortData>
    extends HookConsumerWidget {
  final int id;
  final DetailsVMProvider<T, S> provider;
  final String appBarTitle;
  final String rateTitle;

  const DetailsMediaView({
    super.key,
    required this.id,
    required this.provider,
    required this.appBarTitle,
    required this.rateTitle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vsp = ref.vspFromADFProvider(provider(id));

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final isSkeletonVisible = isLoading && !isInitialized;

    vsp.handleState(listener: (prev, next) => _handleStatus(prev, next, ref));

    final data = vsp.selectWatch((s) => s.data);
    final status = vsp.selectWatch((s) => s.status);
    final currentTab = vsp.selectWatch((s) => s.currentTab);

    final scrollController = useScrollController();

    return ScrollTopListener(
      scrollController: scrollController,
      builder:
          (_, isFabVisible) => Scaffold(
            appBar: MainAppBar(title: Text(appBarTitle)),
            body:
                isSkeletonVisible
                    ? DetailsContentSkeleton(isMovie: T is MovieData)
                    : DetailsScreenContent(
                      data: data,
                      status: status,
                      currentTab: currentTab,
                      scrollController: scrollController,
                      onWatchlistTap: () => _onWatchlistTap(vsp),
                      onWatchedTap: () => _onWatchedTap(context, vsp),
                      onTabSelect: (index) => _onTabSelect(vsp, index),
                      onRefresh:
                          !isLoading
                              ? () => vsp.viewModel.loadInitialData(
                                showLoader: false,
                              )
                              : null,
                    ),
            floatingActionButton:
                isFabVisible
                    ? ScrollTopFab(scrollController: scrollController)
                    : null,
          ),
    );
  }

  void _handleStatus(DetailsState? prev, DetailsState next, WidgetRef ref) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    ref.baseStatusHandler.handleStatus(
      prev,
      next,
      handleLoadingState: () => false,
    );

    _showToast(ref, next.status);
  }

  void _showToast(WidgetRef ref, DetailsStatus status) {
    final toastManager = ref.toastManager;

    return switch (status) {
      AddedToWatchlistStatus() => toastManager.showSuccessToast(
        LocaleKeys.addedToWatchlist.tr(),
      ),
      AddedToWatchedStatus() => toastManager.showSuccessToast(
        LocaleKeys.addedToWatched.tr(),
      ),
      RemovedFromWatchlistStatus() => toastManager.showInfoToast(
        LocaleKeys.removedFromWatchlist.tr(),
      ),
      RemovedFromWatchedStatus() => toastManager.showInfoToast(
        LocaleKeys.removedFromWatched.tr(),
      ),
      _ => null,
    };
  }

  void _onWatchlistTap(DetailsAFSP vsp) {
    final isInWatchlist = vsp.selectRead((s) => s.data.isInWatchlist);

    if (isInWatchlist) {
      vsp.viewModel.removeFromWatchlist();
    } else {
      vsp.viewModel.addToWatchlist();
    }
  }

  void _onTabSelect(DetailsAFSP vsp, int index) {
    final tab = DetailsTab.fromIndex(index);

    vsp.viewModel.updateCurrentTab(tab);
  }

  void _onWatchedTap(BuildContext context, DetailsAFSP vsp) {
    final isWatched = vsp.selectRead((s) => s.data.isWatched);
    final initRate = vsp.selectRead((s) => s.data.userRating);

    showBlurredBottomSheet(
      isDismissible: false,
      context: context,
      child: RateBottomSheet(
        title: LocaleKeys.rateMovieTitle.tr(),
        initRate: initRate,
        onRate: (rate) => vsp.viewModel.addToWatched(rate),
        removeRate: isWatched ? () => vsp.viewModel.removeFromWatched() : null,
      ),
    );
  }
}

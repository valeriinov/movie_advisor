import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tap_on_scroll/tap_on_scroll.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/refresh_view_model/refresh_state.dart';
import '../../../base/refresh_view_model/refresh_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_screen_content.dart';
import 'filter_floating_bar_container.dart';

class FilterMediaView<T extends MediaShortData, F extends FilterData, G>
    extends HookConsumerWidget {
  final ScrollController scrollController;
  final FilterVMProvider<T, F, G> provider;
  final ContentMode contentMode;

  const FilterMediaView({
    super.key,
    required this.scrollController,
    required this.provider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
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

        if (next.isUpdate(prev, (s) => s?.filter)) {
          scrollController.jumpTo(0);
        }
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

    final startPage = vsp.selectWatch((s) => s.startPage);

    useEffect(() {
      final paginationCtrl = _initPaginationController(vsp, scrollController);

      return paginationCtrl.dispose;
    }, [startPage]);

    final results = vsp.selectWatch((s) => s.results);

    return TapInterceptor(
      scrollController: scrollController,
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          FilterFloatingBarContainer(provider: provider),
          FilterScreenContent(
            isLoading: isLoading,
            isInitialized: isInitialized,
            results: results,
            onItemSelect: (id) => _goToDetails(context, id),
            onRefresh: !isLoading
                ? () => vsp.viewModel.loadInitialData(showLoader: false)
                : null,
          ),
        ],
      ),
    );
  }

  bool _isLangUpdated(RefreshState? prev, RefreshState next) {
    return next.isUpdate(prev, (s) => s?.status) &&
        next.status is LangUpdatedStatus;
  }

  ScrollPaginationController _initPaginationController(
    FilterVSP vsp,
    ScrollController scrollController,
  ) {
    final startPage = vsp.selectRead((s) => s.startPage);

    final paginationCtrl = ScrollPaginationController(
      scrollController: scrollController,
      startPage: startPage,
    );

    paginationCtrl.init(
      getPaginationState: () => _getPaginationState(vsp),
      loadNextPage: vsp.viewModel.loadNextPage,
    );

    return paginationCtrl;
  }

  PaginationState _getPaginationState(FilterVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.results);

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

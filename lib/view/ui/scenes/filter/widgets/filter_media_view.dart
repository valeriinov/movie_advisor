import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_screen_content.dart';

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
      },
    );

    useEffect(() {
      final paginationCtrl = _initPaginationController(vsp, scrollController);

      return paginationCtrl.dispose;
    }, []);

    final results = vsp.selectWatch((s) => s.results);

    return FilterScreenContent(
      isLoading: isLoading,
      isInitialized: isInitialized,
      results: results,
      // TODO: Add localization
      emptyListTitle: 'No results found',
      // TODO: Add localization
      emptyListSubtitle: 'Try changing the filters',
      scrollController: scrollController,
      onItemSelect: (id) => _goToDetails(context, id),
      onRefresh:
          !isLoading
              ? () => vsp.viewModel.loadInitialData(showLoader: false)
              : null,
    );
  }

  ScrollPaginationController _initPaginationController(
    FilterVSP vsp,
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

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/utils/scroll_pagination_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/refresh_view_model/refresh_state.dart';
import '../../../base/refresh_view_model/refresh_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/details_route.dart';
import '../search_filter_view_model/search_filter_state.dart';
import '../search_filter_view_model/search_filter_view_model.dart';
import '../search_view_model/search_view_model.dart';
import 'search_screen_content.dart';

class SearchMediaView<T extends MediaShortData> extends HookConsumerWidget {
  final ScrollController scrollController;
  final SearchVMProvider<T> provider;
  final ContentMode contentMode;

  const SearchMediaView({
    super.key,
    required this.scrollController,
    required this.provider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(provider);
    final vspFilter = ref.vspFromADProvider(searchFilterViewModelPr);

    useEffect(() {
      _scheduleInitialDataLoad(context, vspFilter, vsp);

      final paginationCtrl = _initPaginationController(vspFilter, vsp);
      return paginationCtrl.dispose;
    }, []);

    vspFilter.handleState(
      listener: (prev, next) => _handleFilterUpdate(prev, next, vsp),
    );

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(
          prev,
          next,
          handleLoadingState: () => false,
        );
      },
    );

    final isLoading = vsp.isLoading;
    final isInitialized = vsp.isInitialized;
    final results = vsp.selectWatch((s) => s.results);

    final filter = vspFilter.selectWatch((s) => s.filter);

    final refreshVsp = ref.vspFromADProvider(refreshViewModelPr);

    refreshVsp.handleState(
      listener: (prev, next) {
        if (_isLangUpdated(prev, next)) {
          vsp.viewModel.loadByFilter(filter, showLoader: false);
          scrollController.jumpTo(0);
        }
      },
    );

    return SearchScreenContent(
      onRefresh: !isLoading ? () => _onRefresh(vspFilter, vsp) : null,
      isLoading: isLoading,
      isInitialized: isInitialized,
      filter: filter,
      results: results,
      onItemSelect: (id) => _goToDetails(context, id),
    );
  }

  bool _isLangUpdated(RefreshState? prev, RefreshState next) {
    return next.isUpdate(prev, (s) => s?.status) &&
        next.status is LangUpdatedStatus;
  }

  Future<void> _onRefresh(SearchFilterVSP vspFilter, SearchVSP vsp) {
    final filter = vspFilter.selectRead((s) => s.filter);

    return vsp.viewModel.loadByFilter(filter, showLoader: false);
  }

  void _scheduleInitialDataLoad(
    BuildContext context,
    SearchFilterVSP vspFilter,
    SearchVSP vsp,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;

      _handleInitialDataLoading(vspFilter, vsp);
    });
  }

  void _handleInitialDataLoading(SearchFilterVSP vspFilter, SearchVSP vsp) {
    final filter = vspFilter.selectRead((s) => s.filter);

    if (!filter.isDefault) {
      vsp.viewModel.loadByFilter(filter);
    }
  }

  ScrollPaginationController _initPaginationController(
    SearchFilterVSP vspFilter,
    SearchVSP vsp,
  ) {
    final paginationCtrl = ScrollPaginationController(
      scrollController: scrollController,
    );

    paginationCtrl.init(
      getPaginationState: () => _getPaginationState(vsp),
      loadNextPage: (page) {
        final filter = vspFilter.selectRead((s) => s.filter);

        vsp.viewModel.loadNextPage(filter, page);
      },
    );

    return paginationCtrl;
  }

  PaginationState _getPaginationState(SearchVSP vsp) {
    final loadInfo = vsp.selectRead((s) => s.results);

    return PaginationState(
      currentPage: loadInfo.mediaData.currentPage,
      isLoading: loadInfo.isNextPageLoading,
      isLastPage: loadInfo.mediaData.isLastPage,
    );
  }

  void _handleFilterUpdate(
    SearchFilterState? prev,
    SearchFilterState next,
    SearchVSP vsp,
  ) {
    if (next.isUpdate(prev, (s) => s?.filter)) {
      vsp.viewModel.loadByFilter(next.filter);
    }
  }

  void _goToDetails(BuildContext context, int id) {
    DetailsRoute(id: id, contentMode: contentMode).push(context);
  }
}

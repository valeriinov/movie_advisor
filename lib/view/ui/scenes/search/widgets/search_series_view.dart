import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/filter_view_model/filter_state.dart';
import '../../../base/filter_view_model/filter_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../search_view_model/search_view_model.dart';
import 'search_screen_content.dart';

class SearchSeriesView extends HookConsumerWidget {
  final ScrollController scrollController;

  const SearchSeriesView({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(searchSeriesViewModelPr);
    final vspFilter = ref.vspFromADProvider(searchFilterViewModelPr);

    useEffect(() {
      _scheduleInitialDataLoad(context, vspFilter, vsp);
      return null;
    }, []);

    vspFilter.handleState(
        listener: (prev, next) => _handleFilterState(prev, next, vsp));

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => false);
    });

    final results = vsp.selectWatch((s) => s.results);

    return SearchScreenContent(
      resultsMedia: results.mediaData.items,
    );
  }

  void _scheduleInitialDataLoad(
      BuildContext context, FilterVSP vspFilter, SearchSeriesVSP vsp) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;

      _handleInitialDataLoading(vspFilter, vsp);
    });
  }

  void _handleInitialDataLoading(FilterVSP vspFilter, SearchSeriesVSP vsp) {
    final filter = vspFilter.selectRead((s) => s.filter);

    if (!filter.isDefault) {
      vsp.viewModel.loadByFilter(filter);
    }
  }

  void _handleFilterState(
      FilterState? prev, FilterState next, SearchSeriesVSP vsp) {
    if (next.isUpdate(prev, (s) => s?.filter)) {
      vsp.viewModel.loadByFilter(next.filter);
    }
  }
}

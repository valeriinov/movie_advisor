import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../search_view_model/search_view_model.dart';
import 'search_screen_content.dart';

class SearchMoviesView extends HookConsumerWidget {
  final VoidCallback toggleContentMode;
  final ScrollController scrollController;

  const SearchMoviesView({
    super.key,
    required this.toggleContentMode,
    required this.scrollController,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(searchMoviesViewModelPr);
    final viewModel = vsp.viewModel;

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler
          .handleStatus(prev, next, handleLoadingState: () => false);
    });

    return SearchScreenContent(
      // TODO: Add modal bottom sheet
      onMoreTap: toggleContentMode,
      onSearch: viewModel.updateSearchQuery,
    );
  }
}

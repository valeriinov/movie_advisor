import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../search_view_model/search_view_model.dart';
import 'search_movies_view.dart';
import 'search_series_view.dart';

class SearchScreenView extends HookConsumerWidget {
  final ContentMode initContentMode;

  const SearchScreenView({super.key, required this.initContentMode});

  @override
  Widget build(context, ref) {
    final durations = context.baseDurations;

    final vspContMode = ref.vspFromADFProvider(
      searchContModeViewModelPr(initContentMode),
    );

    final vspFilter = ref.vspFromADProvider(searchFilterViewModelPr);

    final contMode = vspContMode.selectWatch((s) => s.mode);

    final scrollController = useScrollController();
    final searchFieldController = useTextEditingController();

    return ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            appBar: MainAppBar(
              title: Text(LocaleKeys.searchScreenTitle.tr()),
            ),
            body: CustomScrollView(
              controller: scrollController,
              slivers: [
                FloatingSearchBar(
                  onSearch: vspFilter.viewModel.updateSearchQuery,
                  // TODO: Add modal bottom sheet
                  onMoreTap: vspContMode.viewModel.toggleMode,
                  textController: searchFieldController,
                ),
                SliverAnimatedSwitcher(
                  duration: durations.animSwitchPrim,
                  child: contMode.isMovies
                      ? SearchMoviesView(
                          scrollController: scrollController,
                        )
                      : SearchSeriesView(
                          scrollController: scrollController,
                        ),
                ),
              ],
            ),
          );
        });
  }
}

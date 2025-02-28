import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/blurred_bottom_sheet.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../search_view_model/search_view_model.dart';
import 'search_content_switcher.dart';
import 'search_filter_bottom_sheet.dart';

class SearchScreenView extends HookConsumerWidget {
  final ContentMode initContentMode;

  const SearchScreenView({super.key, required this.initContentMode});

  @override
  Widget build(context, ref) {
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
            resizeToAvoidBottomInset: false,
            appBar: MainAppBar(
              title: Text(
                contMode.isMovies
                    ? LocaleKeys.searchScreenMoviesTitle.tr()
                    : LocaleKeys.searchScreenSeriesTitle.tr(),
              ),
            ),
            body: CustomScrollView(
              controller: scrollController,
              slivers: [
                FloatingSearchBar(
                  onSearch: vspFilter.viewModel.updateSearchQuery,
                  onMoreTap: () => _onMoreTap(context),
                  textController: searchFieldController,
                ),
                SearchContentSwitcher(
                  scrollController: scrollController,
                  contMode: contMode,
                ),
              ],
            ),
            floatingActionButton: isFabVisible
                ? ScrollTopFab(scrollController: scrollController)
                : null,
          );
        });
  }

  void _onMoreTap(BuildContext context) {
    showBlurredBottomSheet(
      isDismissible: false,
      useRootNavigator: true,
      context: context,
      child: SearchFilterBottomSheet(initContentMode: initContentMode),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_bar/widgets/content_mode_switch.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import 'filter_content_switcher.dart';

class FilterScreenView extends HookConsumerWidget {
  const FilterScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADProvider(contentModeViewModelPr);

    final contMode = vspContMode.selectWatch((s) => s.mode);
    final scrollController = useScrollController();

    vspContMode.handleState(
      listener: (prev, next) {
        if (next.isUpdate(prev, (s) => s?.mode)) {
          scrollController.jumpTo(0);
        }
      },
    );

    return ScrollTopListener(
      scrollController: scrollController,
      builder: (_, isFabVisible) {
        return Scaffold(
          appBar: MainAppBar(
            title: Text(
              contMode.isMovies
                  ? LocaleKeys.filterScreenMoviesTitle.tr()
                  : LocaleKeys.filterScreenSeriesTitle.tr(),
            ),
            actions: [
              ContentModeSwitch(
                contentMode: contMode,
                toggleMode: vspContMode.viewModel.toggleMode,
              ),
            ],
          ),
          body: FilterContentSwitcher(
            scrollController: scrollController,
            contMode: contMode,
          ),
          floatingActionButton: isFabVisible
              ? ScrollTopFab(scrollController: scrollController)
              : null,
        );
      },
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/nav_bars/base_nav_bars_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import '../home_view_model/home_view_model.dart';
import 'home_content_switcher.dart';
import 'home_floating_top_bar.dart';

class HomeScreenView extends HookConsumerWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final navBarStyles = context.baseNavBarsStyles;

    final vspContMode = ref.vspFromADFProvider(
      homeContModeViewModelPr(ContentMode.movies),
    );

    final contMode = vspContMode.selectWatch((s) => s.mode);

    final scrollController = useScrollController();

    return ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            appBar: MainAppBar(
              centerTitle: false,
              titleTextStyle: navBarStyles.appBarSecTitleTextStyle,
              title: Text(
                contMode.isMovies
                    ? LocaleKeys.homeScreenMoviesTitle.tr()
                    : LocaleKeys.homeScreenSeriesTitle.tr(),
              ),
            ),
            body: CustomScrollView(
              controller: scrollController,
              slivers: [
                HomeFloatingTopBar(),
                HomeContentSwitcher(scrollController: scrollController),
                SliverPadding(padding: dimens.padBotPrimIns),
              ],
            ),
            floatingActionButton: isFabVisible
                ? ScrollTopFab(scrollController: scrollController)
                : null,
          );
        });
  }
}

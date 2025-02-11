import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/nav_bars/base_nav_bars_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/scroll_top_fab.dart';
import '../../../widgets/scroll_top_listener.dart';
import 'home_content_switcher.dart';
import 'home_floating_top_bar.dart';

class HomeScreenView extends HookWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final navBarStyles = context.baseNavBarsStyles;

    final scrollController = useScrollController();

    return ScrollTopListener(
        scrollController: scrollController,
        builder: (_, isFabVisible) {
          return Scaffold(
            appBar: MainAppBar(
              centerTitle: false,
              titleTextStyle: navBarStyles.appBarSecTitleTextStyle,
              title: Text(LocaleKeys.homeScreenTitle.tr()),
            ),
            body: CustomScrollView(
              controller: scrollController,
              slivers: [
                HomeFloatingTopBar(),
                SliverPadding(padding: (dimens.spLarge / 2).insBottom()),
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

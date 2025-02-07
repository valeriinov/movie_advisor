import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/nav_bars/base_nav_bars_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import 'home_content_switcher.dart';
import 'home_floating_top_bar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final navBarStyles = context.baseNavBarsStyles;

    return Scaffold(
      appBar: MainAppBar(
        centerTitle: false,
        titleTextStyle: navBarStyles.appBarSecTitleTextStyle,
        title: Text(LocaleKeys.homeScreenTitle.tr()),
      ),
      body: CustomScrollView(
        slivers: [
          HomeFloatingTopBar(),
          HomeContentSwitcher(),
          SliverPadding(padding: dimens.padBotPrimIns)
        ],
      ),
    );
  }
}

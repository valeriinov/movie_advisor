import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/nav_bars/base_nav_bars_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../home_movies/home_movies_view.dart';
import '../../home_series/home_series_view.dart';
import '../home_view_model/home_view_model.dart';
import 'home_floating_top_bar.dart';

class HomeScreenView extends ConsumerWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final navBarStyles = context.baseNavBarsStyles;

    final vsp = ref.vspFromADProvider(homeViewModelPr);

    final contentMode = vsp.selectWatch((s) => s.contentMode);

    return Scaffold(
      appBar: MainAppBar(
        centerTitle: false,
        titleTextStyle: navBarStyles.appBarSecTitleTextStyle,
        title: Text(LocaleKeys.homeScreenTitle.tr()),
      ),
      body: CustomScrollView(
        slivers: [
          HomeFloatingTopBar(),
          contentMode.isMovies ? HomeMoviesView() : HomeSeriesView(),
          SliverPadding(padding: dimens.padBotPrimIns)
        ],
      ),
    );
  }
}

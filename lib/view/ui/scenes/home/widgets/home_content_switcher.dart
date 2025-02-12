import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';

import 'home_movies_view.dart';
import 'home_series_view.dart';
import '../home_view_model/home_view_model.dart';

class HomeContentSwitcher extends ConsumerWidget {
  final ScrollController scrollController;

  const HomeContentSwitcher({super.key, required this.scrollController});

  @override
  Widget build(context, ref) {
    final durations = context.baseDurations;

    final vspContMode = ref.vspFromADFProvider(
      homeContModeViewModelPr(ContentMode.movies),
    );

    final contentMode = vspContMode.selectWatch((s) => s.mode);

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: contentMode.isMovies
          ? HomeMoviesView(scrollController: scrollController)
          : HomeSeriesView(scrollController: scrollController),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'home_movies_view_model/home_movies_view_model.dart';

class HomeMoviesView extends ConsumerWidget {
  const HomeMoviesView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(homeMoviesViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return SliverPadding(
      padding: dimens.padTopPrimIns,
      sliver: MultiSliver(
        children: [],
      ),
    );
  }
}

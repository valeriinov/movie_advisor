import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../home_movies/home_movies_view.dart';
import '../../home_series/home_series_view.dart';
import '../home_view_model/home_view_model.dart';

class HomeScreenView extends ConsumerWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(homeViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    final contentMode = vsp.selectWatch((s) => s.contentMode);

    return Scaffold(
      appBar: MainAppBar(title: Text('Home Screen')), // TODO: Localize title
      body: Padding(
          padding: dimens.padHorPrimIns,
          child: CustomScrollView(
            slivers: [
              contentMode.isMovies ? HomeMoviesView() : HomeSeriesView(),
            ],
          )),
    );
  }
}

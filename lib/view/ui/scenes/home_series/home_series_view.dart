import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import 'home_series_view_model/home_series_view_model.dart';

class HomeSeriesView extends ConsumerWidget {
  const HomeSeriesView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(homeSeriesViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return SliverToBoxAdapter(child: Center(child: Text('HomeSeries View')));
  }
}

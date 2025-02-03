import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../watch_list_view_model/watch_list_view_model.dart';

class WatchListScreenView extends ConsumerWidget  {
  const WatchListScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(watchListViewModelPr);
    
    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MainAppBar(title: Text('WatchList Screen')), // TODO: Localize title
      body: Center(child: Text('WatchList Screen')),
    );
  }
}

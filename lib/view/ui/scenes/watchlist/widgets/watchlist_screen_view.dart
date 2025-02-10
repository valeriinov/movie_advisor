import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../watchlist_view_model/watchlist_view_model.dart';

class WatchlistScreenView extends ConsumerWidget {
  const WatchlistScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(watchlistViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MainAppBar(title: Text('WatchList Screen')),
      // TODO: Localize title
      body: Center(child: Text('WatchList Screen')),
    );
  }
}

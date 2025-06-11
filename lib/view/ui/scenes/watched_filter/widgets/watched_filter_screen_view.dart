import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../watched_filter_view_model/watched_filter_view_model.dart';

class WatchedFilterScreenView extends ConsumerWidget  {
  const WatchedFilterScreenView({super.key});

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: MainAppBar(title: Text('WatchedFilter Screen')), // TODO: Localize title
      body: Center(child: Text('WatchedFilter Screen')),
    );
  }
}

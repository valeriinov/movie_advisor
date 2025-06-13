import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/app_bar/main_app_bar.dart';

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

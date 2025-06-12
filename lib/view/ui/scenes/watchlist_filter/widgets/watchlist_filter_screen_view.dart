import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/app_bar/main_app_bar.dart';

class WatchlistFilterScreenView extends ConsumerWidget  {
  const WatchlistFilterScreenView({super.key});

  @override
  Widget build(context, ref) {

    return Scaffold(
      appBar: MainAppBar(title: Text('WatchlistFilter Screen')), // TODO: Localize title
      body: Center(child: Text('WatchlistFilter Screen')),
    );
  }
}

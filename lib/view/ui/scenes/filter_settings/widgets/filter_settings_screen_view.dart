import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../widgets/app_bar/main_app_bar.dart';

class FilterSettingsScreenView extends ConsumerWidget {
  const FilterSettingsScreenView({super.key});

  @override
  Widget build(context, ref) {
    return Scaffold(
      // TODO: Localize title
      appBar: MainAppBar(title: Text('FilterSettings Screen')),
      body: Center(child: Text('FilterSettings Screen')),
    );
  }
}

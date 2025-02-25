import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../reg_view_model/reg_view_model.dart';

class RegScreenView extends ConsumerWidget  {
  const RegScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(regViewModelPr);
    
    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MainAppBar(title: Text('Reg Screen')), // TODO: Localize title
      body: Center(child: Text('Reg Screen')),
    );
  }
}

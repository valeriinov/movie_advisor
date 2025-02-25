import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../reset_pass_view_model/reset_pass_view_model.dart';

class ResetPassScreenView extends ConsumerWidget  {
  const ResetPassScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(resetPassViewModelPr);
    
    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MainAppBar(title: Text('ResetPass Screen')), // TODO: Localize title
      body: Center(child: Text('ResetPass Screen')),
    );
  }
}

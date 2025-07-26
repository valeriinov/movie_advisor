import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../set_pass_view_model/set_pass_view_model.dart';

class SetPassScreenView extends ConsumerWidget {
  final String oobCode;

  const SetPassScreenView({super.key, required this.oobCode});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(setPassViewModelPr(oobCode));

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(prev, next);
      },
    );

    return Scaffold(
      appBar: MainAppBar(title: Text('SetPass Screen')), // TODO: Localize title
      body: Center(child: Text('SetPass Screen')),
    );
  }
}

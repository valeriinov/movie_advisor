import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../delete_account_view_model/delete_account_view_model.dart';

class DeleteAccountScreenView extends ConsumerWidget  {
  const DeleteAccountScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(deleteAccountViewModelPr);
    
    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    return Scaffold(
      appBar: MainAppBar(title: Text('DeleteAccount Screen')), // TODO: Localize title
      body: Center(child: Text('DeleteAccount Screen')),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../person_view_model/person_view_model.dart';

class PersonScreenView extends ConsumerWidget {
  final int id;

  const PersonScreenView({super.key, required this.id});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADFProvider(personViewModelPr(id));

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(prev, next);
      },
    );

    final person = vsp.selectWatch((s) => s.person);

    print('[PERSON] person: $person');

    return Scaffold(
      appBar: MainAppBar(title: Text('Person Screen')), // TODO: Localize title
      body: Center(child: Text('Person Screen')),
    );
  }
}

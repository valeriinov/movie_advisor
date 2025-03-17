import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_bar/widgets/content_mode_switch.dart';
import '../filter_view_model/filter_view_model.dart';

class FilterScreenView extends ConsumerWidget {
  const FilterScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADProvider(contentModeViewModelPr);

    final contMode = vspContMode.selectWatch((s) => s.mode);

    final vsp = ref.vspFromADProvider(filterViewModelPr);

    vsp.handleState(
      listener: (prev, next) {
        ref.baseStatusHandler.handleStatus(prev, next);
      },
    );

    return Scaffold(
      appBar: MainAppBar(
        title: Text(
          contMode.isMovies
              ? LocaleKeys.filterScreenMoviesTitle.tr()
              : LocaleKeys.filterScreenSeriesTitle.tr(),
        ),
        actions: [
          ContentModeSwitch(
            contentMode: contMode,
            toggleMode: vspContMode.viewModel.toggleMode,
          ),
        ],
      ),
      body: Center(child: Text('Filter Screen')),
    );
  }
}

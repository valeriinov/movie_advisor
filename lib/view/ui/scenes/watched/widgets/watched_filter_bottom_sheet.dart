import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/filter_bottom_sheet.dart';
import '../watched_view_model/watched_view_model.dart';

class WatchedFilterBottomSheet extends ConsumerWidget {
  const WatchedFilterBottomSheet({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADFProvider(
      watchedContModeViewModelPr(ContentMode.movies),
    );

    final contentMode = vspContMode.selectWatch((s) => s.mode);

    return FilterBottomSheet(
      contentMode: contentMode,
      toggleContentMode: vspContMode.viewModel.toggleMode,
    );
  }
}

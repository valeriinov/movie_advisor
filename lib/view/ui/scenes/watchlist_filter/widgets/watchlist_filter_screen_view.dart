import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import 'watchlist_filter_content_switcher.dart';

class WatchlistFilterScreenView extends ConsumerWidget {
  const WatchlistFilterScreenView({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADProvider(contentModeViewModelPr);

    final contMode = vspContMode.selectWatch((s) => s.mode);

    return WatchlistFilterContentSwitcher(contMode: contMode);
  }
}

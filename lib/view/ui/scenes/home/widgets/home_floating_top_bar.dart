import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/home_routes.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';
import '../home_view_model/home_view_model.dart';

class HomeFloatingTopBar extends ConsumerWidget {
  const HomeFloatingTopBar({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(homeViewModelPr);

    return FloatingSearchBar(
      isSearchEnabled: false,
      autoFocus: false,
      onSearchTap: () => _onSearchTab(context, vsp),
      // TODO: Add modal bottom sheet
      onMoreTap: vsp.viewModel.toggleContentMode,
    );
  }

  void _onSearchTab(BuildContext context, HomeVSP vsp) {
    final contentMode = vsp.selectRead((s) => s.contentMode);

    SearchRoute(contentMode: contentMode).go(context);
  }
}

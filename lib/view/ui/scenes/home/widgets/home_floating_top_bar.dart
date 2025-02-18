import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/content_mode_view_model/content_mode_view_model.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/home_routes.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';
import '../../../widgets/blurred_bottom_sheet.dart';
import '../home_view_model/home_view_model.dart';
import 'home_filter_bottom_sheet.dart';

class HomeFloatingTopBar extends ConsumerWidget {
  const HomeFloatingTopBar({super.key});

  @override
  Widget build(context, ref) {
    final vspContMode = ref.vspFromADFProvider(
      homeContModeViewModelPr(ContentMode.movies),
    );

    return FloatingSearchBar(
      isSearchEnabled: false,
      autoFocus: false,
      onSearchTap: () => _onSearchTab(context, vspContMode),
      onMoreTap: () => _onMoreTap(context),
    );
  }

  void _onSearchTab(BuildContext context, ContentModeAFSP vsp) {
    final contentMode = vsp.selectRead((s) => s.mode);

    SearchRoute(contentMode: contentMode).go(context);
  }

  void _onMoreTap(BuildContext context) {
    showBlurredBottomSheet(
      isDismissible: false,
      useRootNavigator: true,
      context: context,
      child: HomeFilterBottomSheet(),
    );
  }
}

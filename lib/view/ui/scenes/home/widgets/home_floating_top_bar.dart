import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/home_routes.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_svg_asset.dart';
import '../../../widgets/form/input_field.dart';
import '../home_view_model/home_view_model.dart';

class HomeFloatingTopBar extends ConsumerWidget {
  const HomeFloatingTopBar({super.key});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final vsp = ref.vspFromADProvider(homeViewModelPr);

    return SliverAppBar(
      floating: true,
      primary: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: dimens.padHorPrim),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: GestureDetector(
                // TODO: Add search mode to route
                onTap: () => SearchRoute().go(context),
                child: InputField.search(enabled: false),
              ),
            ),
            IconButton(
              // TODO: Add modal bottom sheet
              onPressed: vsp.viewModel.toggleContentMode,
              icon: AppSvgAsset(path: AppImages.moreVertIcon),
            ),
          ],
        ),
      ),
    );
  }
}

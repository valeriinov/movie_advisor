import 'package:flutter/material.dart';

import '../../resources/app_images.dart';
import '../../resources/base_theme/colors/base_colors_ext.dart';
import '../app_svg_asset.dart';
import '../app_bar/main_app_bar.dart';

class WatchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onMoreTap;

  const WatchAppBar({super.key, required this.title, this.onMoreTap});

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return MainAppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: AppSvgAsset(
            path: AppImages.moreVertIcon,
            color: colors.appBarPrimFg,
          ),
          onPressed: () => onMoreTap?.call(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

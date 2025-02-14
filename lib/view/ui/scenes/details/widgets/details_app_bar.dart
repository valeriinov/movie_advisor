import 'package:flutter/material.dart';

import '../../../resources/app_images.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../widgets/app_bar/main_app_bar.dart';
import '../../../widgets/app_svg_asset.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isInWatchlist;
  final bool isWatched;
  final VoidCallback? onWatchlistTap;
  final VoidCallback? onWatchedTap;

  const DetailsAppBar({
    super.key,
    required this.title,
    required this.isInWatchlist,
    required this.isWatched,
    this.onWatchlistTap,
    this.onWatchedTap,
  });

  @override
  Widget build(BuildContext context) {
    return MainAppBar(
      title: Text(title),
      actions: [
        _buildWatchlistButton(),
        _buildWatchedButton(),
      ],
    );
  }

  Widget _buildWatchlistButton() {
    return _buildButton(
      path: isInWatchlist
          ? AppImages.addWatchlistFillIcon
          : AppImages.addWatchlistIcon,
      onTap: onWatchlistTap,
    );
  }

  Widget _buildWatchedButton() {
    return _buildButton(
      path: isWatched ? AppImages.addWatchedFillIcon : AppImages.addWatchedIcon,
      onTap: onWatchedTap,
    );
  }

  Widget _buildButton({required String path, VoidCallback? onTap}) {
    return Builder(
      builder: (context) {
        final durations = context.baseDurations;

        return AnimatedSwitcher(
          duration: durations.animSwitchPrim,
          child: onTap != null
              ? IconButton(
                  onPressed: onTap,
                  icon: AppSvgAsset(path: path),
                )
              : SizedBox.shrink(),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

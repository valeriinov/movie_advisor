import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/buttons/base_buttons_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_svg_asset.dart';

class DetailsActionsContainer extends StatelessWidget {
  final MediaData data;
  final VoidCallback? onWatchlistTap;
  final VoidCallback? onWatchedTap;

  const DetailsActionsContainer({
    super.key,
    required this.data,
    this.onWatchlistTap,
    this.onWatchedTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorPrimIns,
        child: Wrap(
          spacing: dimens.spMedium,
          children: [_buildWatchlistButton(), _buildWatchedButton()],
        ),
      ),
    );
  }

  Widget _buildWatchlistButton() {
    return _buildButton(
      path:
          data.isInWatchlist
              ? AppImages.addWatchlistFillIcon
              : AppImages.addWatchlistIcon,
      onTap: onWatchlistTap,
    );
  }

  Widget _buildWatchedButton() {
    return _buildButton(
      path:
          data.isWatched
              ? AppImages.addWatchedFillIcon
              : AppImages.addWatchedIcon,
      onTap: onWatchedTap,
    );
  }

  Widget _buildButton({required String path, VoidCallback? onTap}) {
    return Builder(
      builder: (context) {
        final styles = context.baseButtonStyles;

        return IconButton(
          style: styles.iconBtnSecStyle,
          onPressed: onTap,
          icon: Container(
            padding: 7.insAll(),
            height: 38,
            width: 38,
            child: AppSvgAsset(path: path),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../common/utils/ext/double/to_rating.dart';
import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_svg_asset.dart';
import '../../../widgets/image_with_loader.dart';
import '../../../widgets/poster.dart';

class DetailsHeader extends StatelessWidget {
  final MediaData data;

  const DetailsHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 271,
        ),
        child: Stack(
          children: [
            _buildBackdropAndTitle(),
            _buildPoster(),
            _buildTmdbRating(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackdropAndTitle() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBackdrop(),
        _buildTitle(),
      ],
    );
  }

  Widget _buildBackdrop() {
    return ClipRRect(
      borderRadius: BorderRadiusCircular.bottom(16),
      child: ImageWithLoader(
        imagePath: data.backdropUrl,
        fit: BoxFit.cover,
        size: Size.fromHeight(210),
        cacheHeight: 210,
      ),
    );
  }

  Widget _buildTitle() {
    return Builder(builder: (context) {
      final dimens = context.baseDimens;

      return Flexible(
        child: Padding(
          padding: EdgeInsets.only(
            left: 136.0,
            top: 12,
            right: dimens.padHorPrim,
          ),
          child: Text(
            data.title,
            style: context.titleMedium,
          ),
        ),
      );
    });
  }

  Widget _buildPoster() {
    return Builder(builder: (context) {
      final styles = context.baseComponentsStyles;

      return Positioned(
        top: 151,
        left: 29,
        child: Poster(
          url: data.posterUrl,
          size: styles.posterSmallSize,
        ),
      );
    });
  }

  Widget _buildTmdbRating() {
    return Builder(
      builder: (context) {
        final styles = context.baseComponentsStyles;
        final colors = context.baseColors;

        return Positioned(
          top: 178,
          right: 11,
          child: Container(
            decoration: BoxDecoration(
              color: colors.backdropRatingBg,
              borderRadius: BorderRadiusCircular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  AppSvgAsset(path: AppImages.starIcon),
                  4.gapHor(),
                  Text(
                    data.tmdbRating.voteAverage.toRatingString(),
                    style: styles.infoCardRatingTextStyle,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/image_with_loader.dart';
import '../../../widgets/poster.dart';

class DetailsHeader extends StatelessWidget {
  final MediaData data;

  const DetailsHeader({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 271),
        child: Stack(children: [_buildBackdropAndTitle(), _buildPoster()]),
      ),
    );
  }

  Widget _buildBackdropAndTitle() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildBackdrop(), _buildTitle()],
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
    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;

        return Flexible(
          child: Padding(
            padding: EdgeInsets.only(
              left: 123.0,
              top: 12,
              right: dimens.padHorPrim,
            ),
            child: Text(data.title, style: context.titleMedium),
          ),
        );
      },
    );
  }

  Widget _buildPoster() {
    return Builder(
      builder: (context) {
        final dimens = context.baseDimens;
        final styles = context.baseComponentsStyles;

        return Positioned(
          top: 151,
          left: dimens.padHorPrim,
          child: Skeleton.ignore(
            child: Poster(
              url: data.posterUrl,
              size: styles.posterSmallSize,
              transparentPlaceholder: true,
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/media_date_str.dart';
import '../../../resources/ext/media_genres_str.dart';
import 'details_props_tile.dart';

class DetailsPropsContainer extends StatelessWidget {
  final MediaData data;

  const DetailsPropsContainer({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorSecIns,
        child: Column(
          spacing: dimens.spMedium,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DetailsPropsTile(
              iconPath: AppImages.dateIcon,
              description: data.getPremiereYearStr(),
            ),
            DetailsPropsTile(
              iconPath: AppImages.genreIcon,
              description: data.getGenresStr(),
            ),
          ],
        ),
      ),
    );
  }
}

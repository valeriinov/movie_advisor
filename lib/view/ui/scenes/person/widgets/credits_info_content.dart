import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/app_images.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../widgets/media_info_card/widgets/media_info_tile.dart';

class CreditsInfoContent extends StatelessWidget {
  final String title;
  final String? genres;
  final String? year;
  final String? actCharacter;
  final String? crewJob;

  const CreditsInfoContent({
    super.key,
    required this.title,
    this.genres,
    this.year,
    this.actCharacter,
    this.crewJob,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return Expanded(
      child: Padding(
        padding: 25.insRight(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.gapVert(),
            Text(
              title,
              style: context.bodyLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            2.gapVert(),
            if (genres.isNotBlank)
              MediaInfoTile(
                iconPath: AppImages.genreIcon,
                iconColor: colors.infoCardPrimFg,
                description: genres!,
              ).paddingOnly(top: 5),
            if (year.isNotBlank)
              MediaInfoTile(
                iconPath: AppImages.dateIcon,
                iconColor: colors.infoCardPrimFg,
                description: year!,
              ).paddingOnly(top: 5),
            if (actCharacter.isNotBlank)
              MediaInfoTile(
                iconPath: AppImages.userIcon,
                iconColor: colors.infoCardPrimFg,
                description: actCharacter!,
              ).paddingOnly(top: 5),
            if (crewJob.isNotBlank)
              MediaInfoTile(
                iconPath: AppImages.movieIcon,
                iconColor: colors.infoCardPrimFg,
                description: crewJob!,
              ).paddingOnly(top: 5),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/cast_data.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/image_with_placeholder.dart';

class CastProfile extends StatelessWidget {
  final CastData data;

  const CastProfile({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              height: 100,
              width: 100,
              child: ImageWithPlaceholder(
                imagePath: data.profilePath,
              ),
            )),
        dimens.spSmall.gapVert(),
        Text(
          data.name,
          style: context.labelMedium,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        dimens.spExtSmall.gapVert(),
        Text(
          data.character,
          style: context.bodySmall?.copyWith(color: colors.textThemeSec),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

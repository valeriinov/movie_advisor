import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../../domain/entities/base_media/crew_data.dart';
import '../../../navigation/routes/person_route.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/app_svg_asset.dart';

class PropsDirectorsTile extends StatelessWidget {
  final List<CrewData> directors;

  const PropsDirectorsTile({super.key, required this.directors});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final colors = context.baseColors;
    final styles = context.baseComponentsStyles;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSvgAsset(
          path: AppImages.movieIcon,
          color: colors.textThemeSec,
          width: styles.detailsPropsIconSize,
          height: styles.detailsPropsIconSize,
        ),
        dimens.spSmall.gapHor(),
        Expanded(
          child: Wrap(
            children: directors
                .map(
                  (director) => InkWell(
                    borderRadius: BorderRadiusCircular(4),
                    onTap: () => PersonRoute(id: director.id).push(context),
                    child: Text(
                      director.name,
                      style: styles.detailsPropsTextStyle.copyWith(
                        color: colors.btnTextPrimFg,
                      ),
                    ).paddingSymmetric(horizontal: 4),
                  ),
                )
                .toList()
                .addSeparators(
                  context,
                  (ctx, i) => Text(', ', style: styles.detailsPropsTextStyle),
                ),
          ),
        ),
      ],
    );
  }
}

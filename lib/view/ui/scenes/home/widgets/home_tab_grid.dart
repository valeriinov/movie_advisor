import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/poster.dart';
import '../../../base/media_load_info.dart';

class HomeTabGrid extends StatelessWidget {
  final MediaLoadInfo<MediaShortData> mediaLoadInfo;
  final void Function(int id)? onTap;

  const HomeTabGrid({super.key, required this.mediaLoadInfo, this.onTap});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;

    final items = mediaLoadInfo.mediaData.items;
    final itemSize = styles.posterMediumSize;

    return SliverPadding(
      padding: dimens.padHorPrimIns,
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 14,
          crossAxisSpacing: 18,
          crossAxisCount: 3,
          childAspectRatio: itemSize.width / itemSize.height,
        ),
        delegate: SliverChildBuilderDelegate(childCount: items.length, (
          context,
          index,
        ) {
          final item = items[index];

          return Poster(
            url: item.posterUrl,
            onTap: onTap != null ? () => onTap!(item.id) : null,
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../media_info_card/media_info_card.dart';

class WatchItems extends StatelessWidget {
  final List<MediaShortData> media;
  final void Function(int id)? onItemSelect;

  const WatchItems({super.key, required this.media, this.onItemSelect});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverList.separated(
      itemCount: media.length,
      itemBuilder: (context, index) {
        final item = media[index];

        return MediaInfoCard(
          itemData: item,
          onTap: onItemSelect != null
              ? () => onItemSelect?.call(item.id)
              : null,
        );
      },
      separatorBuilder: (_, __) => dimens.spLarge.gapVert(),
    );
  }
}

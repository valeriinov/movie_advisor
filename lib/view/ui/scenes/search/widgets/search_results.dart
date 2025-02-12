import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/gap_creator.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/media_info_card/media_info_card.dart';

class SearchResults extends StatelessWidget {
  final List<MediaShortData> resultsMedia;
  final void Function(int id)? onItemSelect;

  const SearchResults({
    super.key,
    required this.resultsMedia,
    this.onItemSelect,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final padHor = dimens.padHorPrimIns;

    return SliverPadding(
      padding: padHor.copyWith(top: dimens.spLarge / 2),
      sliver: SliverList.separated(
        itemCount: resultsMedia.length,
        itemBuilder: (context, index) {
          final media = resultsMedia[index];

          return MediaInfoCard(
            itemData: media,
            onTap: onItemSelect != null
                ? () => onItemSelect?.call(media.id)
                : null,
          );
        },
        separatorBuilder: (_, __) => dimens.spLarge.gapVert(),
      ),
    );
  }
}

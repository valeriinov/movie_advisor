import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../domain/entities/base_media/media_short_data.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/base_theme/durations/base_durations_ext.dart';
import '../../scenes/home/model/media_load_info.dart';
import '../poster.dart';

class HomeTabContent extends StatelessWidget {
  final MediaLoadInfo<MediaShortData> mediaLoadInfo;
  final void Function(int id)? onTap;

  const HomeTabContent({super.key, required this.mediaLoadInfo, this.onTap});

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;

    final isInitialized = mediaLoadInfo.isInitialized;
    final items = mediaLoadInfo.mediaData.items;
    final itemSize = styles.posterMediumSize;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: !isInitialized
          ? SliverFillRemaining(
              child: SizedBox(
                height: context.height,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          : SliverPadding(
              padding: dimens.padHorPrimIns,
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 18,
                  crossAxisCount: 3,
                  childAspectRatio: itemSize.width / itemSize.height,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: items.length,
                  (context, index) {
                    final item = items[index];

                    return Poster(
                      url: item.posterUrl,
                      onTap: onTap != null ? () => onTap!(item.id) : null,
                    );
                  },
                ),
              ),
            ),
    );
  }
}

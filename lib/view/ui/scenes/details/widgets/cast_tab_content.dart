import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/context/text_theme_provider.dart';

import '../../../../../domain/entities/base_media/cast_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import 'cast_profile.dart';

class CastTabContent extends StatelessWidget {
  final List<CastData> cast;

  const CastTabContent({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return cast.isNotEmpty
        ? SliverPadding(
          padding: dimens.padHorSecIns,
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: dimens.spSmall,
              crossAxisSpacing: dimens.spLarge,
              crossAxisCount: 2,
              mainAxisExtent: 165,
            ),
            delegate: SliverChildBuilderDelegate(childCount: cast.length, (
              context,
              index,
            ) {
              final item = cast[index];

              return CastProfile(data: item);
            }),
          ),
        )
        : SliverToBoxAdapter(
          child: Padding(
            padding: dimens.padHorPrimIns,
            child: Text(
              LocaleKeys.emptyCastTab.tr(),
              style: context.bodyMedium?.copyWith(height: 1.8),
            ),
          ),
        );
  }
}

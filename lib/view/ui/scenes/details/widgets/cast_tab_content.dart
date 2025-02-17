import 'package:flutter/material.dart';

import '../../../../../domain/entities/base_media/cast_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'cast_profile.dart';

class CastTabContent extends StatelessWidget {
  final List<CastData> cast;

  const CastTabContent({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverPadding(
      padding: dimens.padHorSecIns,
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: dimens.spSmall,
          crossAxisSpacing: dimens.spLarge,
          crossAxisCount: 2,
          mainAxisExtent: 165,
        ),
        delegate: SliverChildBuilderDelegate(
          childCount: cast.length,
          (context, index) {
            final item = cast[index];

            return CastProfile(data: item);
          },
        ),
      ),
    );
  }
}

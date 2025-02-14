import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';

class AboutTabContent extends StatelessWidget {
  final String overview;

  const AboutTabContent({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorPrimIns,
        child: Text(
          overview,
          style: context.bodyMedium?.copyWith(height: 1.8),
        ),
      ),
    );
  }
}

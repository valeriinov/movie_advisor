import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/context/text_theme_provider.dart';

import '../resources/base_theme/dimens/base_dimens_ext.dart';

class EmptyTabContent extends StatelessWidget {
  final String description;

  const EmptyTabContent({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorPrimIns,
        child: Text(
          description,
          style: context.bodyMedium?.copyWith(height: 1.8),
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';

class BiographyTabContent extends StatelessWidget {
  final String biography;

  const BiographyTabContent({super.key, required this.biography});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final content =
        biography.isNotBlank ? biography : LocaleKeys.emptyBiographyTab.tr();

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorPrimIns,
        child: Text(content, style: context.bodyMedium?.copyWith(height: 1.8)),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';

class AboutTabContent extends StatelessWidget {
  final String overview;

  const AboutTabContent({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final content =
        overview.isNotBlank ? overview : LocaleKeys.emptyOverviewTab.tr();

    return SliverToBoxAdapter(
      child: Padding(
        padding: dimens.padHorPrimIns,
        child: Text(content, style: context.bodyMedium?.copyWith(height: 1.8)),
      ),
    );
  }
}

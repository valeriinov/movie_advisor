import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'search_results.dart';

class SearchScreenContent extends StatelessWidget {
  final List<MediaShortData> resultsMedia;
  final void Function(int id)? onItemSelect;

  const SearchScreenContent({
    super.key,
    required this.resultsMedia,
    this.onItemSelect,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    return MultiSliver(
      children: [
        SearchResults(
          resultsMedia: resultsMedia,
          onItemSelect: onItemSelect,
        ),
        SliverPadding(padding: dimens.padBotPrimIns)
      ],
    );
  }
}

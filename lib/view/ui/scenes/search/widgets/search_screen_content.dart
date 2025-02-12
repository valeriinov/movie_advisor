import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../base/media_load_info.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../widgets/next_page_loader.dart';
import '../../../widgets/sliver_fill_loader.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'search_results.dart';

class SearchScreenContent extends StatelessWidget {
  final bool isLoading;
  final MediaLoadInfo<MediaShortData> results;
  final void Function(int id)? onItemSelect;
  final Future<void> Function()? onRefresh;

  const SearchScreenContent({
    super.key,
    required this.isLoading,
    required this.results,
    this.onItemSelect,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final isNextPageLoading = results.isNextPageLoading;

    return isLoading
        ? SliverFillLoader()
        : MultiSliver(
            children: [
              SliverRefreshIndicator(
                onRefresh: onRefresh,
              ),
              SearchResults(
                resultsMedia: results.mediaData.items,
                onItemSelect: onItemSelect,
              ),
              if (isNextPageLoading) NextPageLoader(),
              SliverPadding(padding: dimens.padBotPrimIns),
            ],
          );
  }
}

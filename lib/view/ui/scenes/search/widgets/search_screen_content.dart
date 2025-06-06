import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/dart_ext/string/empty_string_handler.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/search/search_filter_data.dart';
import '../../../base/media_load_info.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/next_page_loader.dart';
import '../../../widgets/sliver_empty_list_container.dart';
import '../../../widgets/sliver_fill_loader.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'search_results.dart';

class SearchScreenContent extends StatelessWidget {
  final bool isLoading;
  final bool isInitialized;
  final SearchFilterData filter;
  final MediaLoadInfo<MediaShortData> results;
  final void Function(int id)? onItemSelect;
  final Future<void> Function()? onRefresh;

  bool get _hasEmptyResults {
    return results.mediaData.items.isEmpty &&
        !isLoading &&
        isInitialized &&
        filter.query.isNotNullAndNotEmpty;
  }

  const SearchScreenContent({
    super.key,
    required this.isLoading,
    required this.isInitialized,
    required this.filter,
    required this.results,
    this.onItemSelect,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final dimens = context.baseDimens;

    final isNextPageLoading = results.isNextPageLoading;

    return SliverAnimatedSwitcher(
      duration: durations.animSwitchPrim,
      child: switch (_hasEmptyResults) {
        true => _buildEmptySearch(context),
        false when isLoading => SliverFillLoader(),
        _ => MultiSliver(
          children: [
            SliverRefreshIndicator(onRefresh: onRefresh),
            SearchResults(
              resultsMedia: results.mediaData.items,
              onItemSelect: onItemSelect,
            ),
            if (isNextPageLoading) NextPageLoader(),
            SliverPadding(padding: dimens.padBotPrimIns),
          ],
        ),
      },
    );
  }

  Widget _buildEmptySearch(BuildContext context) {
    return MultiSliver(
      children: [
        SliverRefreshIndicator(onRefresh: onRefresh),
        SliverEmptyListContainer(
          height: 450,
          imagePath: AppImages.emptyResultImage,
          title: LocaleKeys.emptySearchTitle.tr(),
          subtitle: LocaleKeys.emptySearchSubtitle.tr(),
        ),
      ],
    );
  }
}

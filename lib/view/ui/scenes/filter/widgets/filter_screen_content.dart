import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../base/media_load_info.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/next_page_loader.dart';
import '../../../widgets/sliver_empty_list_container.dart';
import '../../../widgets/sliver_fill_loader.dart';
import '../../../widgets/sliver_refresh_indicator.dart';
import 'filter_items.dart';

class FilterScreenContent extends StatelessWidget {
  final bool isLoading;
  final bool isInitialized;
  final MediaLoadInfo<MediaShortData> results;
  final void Function(int id)? onItemSelect;
  final Future<void> Function()? onRefresh;

  bool get _hasEmptyList {
    return results.mediaData.items.isEmpty && isInitialized;
  }

  const FilterScreenContent({
    super.key,
    required this.isLoading,
    required this.isInitialized,
    required this.results,
    required this.onItemSelect,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final durations = context.baseDurations;
    final dimens = context.baseDimens;

    final isNextPageLoading = results.isNextPageLoading;

    return SliverPadding(
      padding: dimens.padHorPrimIns,
      sliver: SliverAnimatedSwitcher(
        duration: durations.animSwitchPrim,
        child: switch (_hasEmptyList) {
          true => _buildEmptyList(),
          false when isLoading => SliverFillLoader(),
          _ => MultiSliver(
            children: [
              SliverRefreshIndicator(onRefresh: onRefresh),
              SliverPadding(padding: (dimens.spLarge / 2).insTop()),
              FilterItems(
                media: results.mediaData.items,
                onItemSelect: onItemSelect,
              ),
              if (isNextPageLoading) NextPageLoader(),
              SliverPadding(padding: dimens.padTopPrimIns),
            ],
          ),
        },
      ),
    );
  }

  Widget _buildEmptyList() {
    return MultiSliver(
      children: [
        SliverRefreshIndicator(onRefresh: onRefresh),
        SliverEmptyListContainer(
          imagePath: AppImages.emptyResultImage,
          title: LocaleKeys.emptyFilterTitle.tr(),
          subtitle: LocaleKeys.emptyFilterSubtitle.tr(),
        ),
      ],
    );
  }
}

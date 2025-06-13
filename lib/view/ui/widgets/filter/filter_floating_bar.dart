import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:tap_on_scroll/tap_on_scroll.dart';

import '../../resources/app_images.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/locale_keys.g.dart';
import '../../scenes/filter/widgets/filter_button.dart';
import '../no_always_scroll_wrapper.dart';

class FilterFloatingBar extends StatelessWidget {
  final String keyId;
  final String sortBySubtitle;
  final String filterSubtitle;
  final VoidCallback? onSortByTap;
  final VoidCallback? onFilterTap;

  const FilterFloatingBar({
    super.key,
    required this.keyId,
    required this.sortBySubtitle,
    required this.filterSubtitle,
    this.onSortByTap,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final fixedHeight = kToolbarHeight + (dimens.spLarge / 2);

    return SliverAppBar(
      floating: true,
      snap: true,
      primary: false,
      expandedHeight: fixedHeight,
      toolbarHeight: fixedHeight,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(bottom: dimens.spLarge / 2),
        title: TappableArea(
          child: NoAlwaysScrollWrapper(
            child: ListView(
              key: PageStorageKey(keyId),
              scrollDirection: Axis.horizontal,
              padding: 4.insHor(),
              children: [
                FilterButton(
                  iconPath: AppImages.sortIcon,
                  title: LocaleKeys.filterSortBy.tr(),
                  subtitle: sortBySubtitle,
                  onTap: onSortByTap,
                ),
                FilterButton(
                  iconPath: AppImages.tuneIcon,
                  title: LocaleKeys.filterSettings.tr(),
                  subtitle: filterSubtitle,
                  onTap: onFilterTap,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

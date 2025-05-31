import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/ext/flutter_ext/widget/edge_insets_creator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tap_on_scroll/tap_on_scroll.dart';

import '../../../../../common/utils/ext/selected_filters_handler.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/home_routes.dart';
import '../../../resources/app_images.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/ext/sort_by_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet/blurred_bottom_sheet.dart';
import '../../../widgets/filter_bottom_sheet.dart';
import '../../../widgets/no_always_scroll_wrapper.dart';
import '../filter_view_model/filter_view_model.dart';
import 'filter_button.dart';
import 'sort_by_radio_group.dart';

class FloatingFilterBar<T extends MediaShortData, F extends FilterData, G>
    extends ConsumerWidget {
  final FilterVMProvider<T, F, G> provider;

  const FloatingFilterBar({super.key, required this.provider});

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;

    final fixedHeight = kToolbarHeight + (dimens.spLarge / 2);

    final vsp = ref.vspFromADProvider(provider);
    final viewModel = vsp.viewModel;

    final filter = vsp.selectWatch((s) => s.filter);

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
              key: const PageStorageKey('floating-filter-bar-scroll'),
              scrollDirection: Axis.horizontal,
              padding: 4.insHor(),
              children: [
                FilterButton(
                  iconPath: AppImages.sortIcon,
                  title: LocaleKeys.filterSortBy.tr(),
                  subtitle: filter.sortBy.desc,
                  onTap: () => _openSortByDialog(
                    context,
                    isMovies: filter is MoviesFilterData,
                    currentSortBy: filter.sortBy,
                    onSortByChanged: viewModel.updateSortBy,
                  ),
                ),
                FilterButton(
                  iconPath: AppImages.tuneIcon,
                  title: LocaleKeys.filterSettings.tr(),
                  subtitle: _getFilterSettingsDescription(filter),
                  onTap: () => FilterSettingsRoute().push(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getFilterSettingsDescription(F filter) {
    final filtersCount = filter.getSelectedFiltersCount();

    return filtersCount == 0
        ? LocaleKeys.filterDescNone.tr()
        : '${LocaleKeys.filterSelectedDesc.tr()} ($filtersCount)';
  }

  void _openSortByDialog(
    BuildContext ctx, {
    required bool isMovies,
    required SortBy currentSortBy,
    required void Function(SortBy) onSortByChanged,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: FilterBottomSheet(
        minHeight: 400,
        title: LocaleKeys.sortByDialog.tr(),
        content: SortByRadioGroup(
          isMovies: isMovies,
          currentSortBy: currentSortBy,
          onSortByChanged: onSortByChanged,
        ),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/selected_filters.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../../../domain/entities/filter/movies_filter_data.dart';
import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/home_routes.dart';
import '../../../resources/ext/sort_by_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet/blurred_bottom_sheet.dart';
import '../../../widgets/filter/filter_bottom_sheet.dart';
import '../../../widgets/filter/filter_floating_bar.dart';
import '../filter_view_model/filter_view_model.dart';
import 'sort_by_radio_group.dart';

class FilterFloatingBarContainer<
  T extends MediaShortData,
  F extends FilterData,
  G
>
    extends ConsumerWidget {
  final FilterVMProvider<T, F, G> provider;

  const FilterFloatingBarContainer({super.key, required this.provider});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(provider);
    final viewModel = vsp.viewModel;

    final isInitialized = vsp.selectWatch((s) => s.status.isInitialized);
    final filter = vsp.selectWatch((s) => s.filter);

    return FilterFloatingBar(
      keyId: 'filter_floating_bar',
      isContentVisible:  !vsp.isLoading || isInitialized,
      sortBySubtitle: filter.sortBy.desc,
      filterSubtitle: _getFilterSettingsDescription(filter),
      onSortByTap: () => _openSortByDialog(
        context,
        isMovies: filter is MoviesFilterData,
        currentSortBy: filter.sortBy,
        onSortByChanged: viewModel.updateSortBy,
      ),
      onFilterTap: () => FilterSettingsRoute().push(context),
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

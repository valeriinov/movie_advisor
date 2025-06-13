import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/utils/ext/watched_selected_filters.dart';
import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/watched_filter/watched_filter_data.dart';
import '../../../../../domain/entities/watched_filter/watched_sort_by.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../navigation/routes/watched_routes.dart';
import '../../../resources/ext/watched_sort_by_desc.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet/blurred_bottom_sheet.dart';
import '../../../widgets/filter/filter_bottom_sheet.dart';
import '../../../widgets/filter/filter_floating_bar.dart';
import '../watched_view_model/watched_view_model.dart';
import 'watched_sort_by_radio_group.dart';

class WatchedFloatingBarContainer<
  T extends MediaShortData,
  F extends WatchedFilterData
>
    extends ConsumerWidget {
  final WatchedVMProvider<T, F> provider;

  const WatchedFloatingBarContainer({super.key, required this.provider});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(provider);
    final viewModel = vsp.viewModel;

    final filter = vsp.selectWatch((s) => s.filter);

    return FilterFloatingBar(
      keyId: 'watched_floating_bar',
      sortBySubtitle: filter.sortBy.desc,
      filterSubtitle: _getFilterSettingsDescription(filter),
      onSortByTap: () => _openSortByDialog(
        context,
        currentSortBy: filter.sortBy,
        onSortByChanged: viewModel.updateSortBy,
      ),
      onFilterTap: () => WatchedFilterRoute().push(context),
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
    required WatchedSortBy currentSortBy,
    required void Function(WatchedSortBy) onSortByChanged,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: FilterBottomSheet(
        minHeight: 400,
        title: LocaleKeys.sortByDialog.tr(),
        content: WatchedSortByRadioGroup(
          currentSortBy: currentSortBy,
          onSortByChanged: onSortByChanged,
        ),
      ),
    );
  }
}

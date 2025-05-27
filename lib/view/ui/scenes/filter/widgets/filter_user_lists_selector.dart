import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet_checkbox.dart';
import 'filter_control_buttons.dart';

class FilterUserListsSelector extends HookWidget {
  final bool includeWatched;
  final bool includeWatchlist;
  final void Function({
    required bool includeWatched,
    required bool includeWatchlist,
  })
  onApply;
  final void Function({
    required bool includeWatched,
    required bool includeWatchlist,
  })?
  onReset;

  const FilterUserListsSelector({
    super.key,
    required this.includeWatched,
    required this.includeWatchlist,
    required this.onApply,
    this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;
    final labelStyle = styles.listTileSecTitleTextStyle;

    final selectedIncludeWatched = useState(includeWatched);
    final selectedIncludeWatchlist = useState(includeWatchlist);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomSheetCheckbox(
          label: LocaleKeys.includeWatchedDesc.tr(),
          value: selectedIncludeWatched.value,
          labelStyle: labelStyle,
          onChanged: (v) => selectedIncludeWatched.value = v ?? true,
        ),
        dimens.spExtSmall.gapVert(),
        BottomSheetCheckbox(
          label: LocaleKeys.includeWatchlistDesc.tr(),
          value: selectedIncludeWatchlist.value,
          labelStyle: labelStyle,
          onChanged: (v) => selectedIncludeWatchlist.value = v ?? true,
        ),
        dimens.spExtLarge.gapVert(),
        FilterControlButtons(
          popOnReset: false,
          onApply: () => onApply(
            includeWatched: selectedIncludeWatched.value,
            includeWatchlist: selectedIncludeWatchlist.value,
          ),
          onReset: onReset != null
              ? () =>
                    onReset?.call(includeWatched: true, includeWatchlist: true)
              : () {
                  selectedIncludeWatched.value = true;
                  selectedIncludeWatchlist.value = true;
                },
        ),
        10.gapVert(),
      ],
    );
  }
}

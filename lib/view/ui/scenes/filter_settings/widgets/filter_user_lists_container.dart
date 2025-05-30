import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/filter_checkbox_list_tile.dart';

class FilterUserListsContainer extends StatelessWidget {
  final bool includeWatched;
  final bool includeWatchlist;
  final Function(bool) onTapIncludeWatched;
  final Function(bool) onTapIncludeWatchlist;

  const FilterUserListsContainer({
    super.key,
    required this.includeWatched,
    required this.includeWatchlist,
    required this.onTapIncludeWatched,
    required this.onTapIncludeWatchlist,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final styles = context.baseComponentsStyles;

    return ExpansionTile(
      title: Text(
        LocaleKeys.filterYourListsDesc.tr(),
        style: styles.expTileTitleTextStyle,
      ),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: [
        FilterCheckboxListTile(
          label: LocaleKeys.includeWatchedDesc.tr(),
          value: includeWatched,
          onChanged: (val) {
            if (val == null) return;
            onTapIncludeWatched(val);
          },
        ),
        FilterCheckboxListTile(
          label: LocaleKeys.includeWatchlistDesc.tr(),
          value: includeWatchlist,
          onChanged: (val) {
            if (val == null) return;
            onTapIncludeWatchlist(val);
          },
        ),
        dimens.spSmall.gapVert(),
      ],
    );
  }

  String _getSubtitle() {
    if (includeWatched && includeWatchlist) {
      return LocaleKeys.filterDescAll.tr();
    } else if (includeWatched || includeWatchlist) {
      return '${LocaleKeys.filterSelectedDesc.tr()} (1)';
    } else {
      return LocaleKeys.filterDescNone.tr();
    }
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/app_date_formats.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';

class FilterDatesContainer extends StatelessWidget {
  final DateTime? fromDate;
  final DateTime? toDate;
  final Function(DateTime?) onFromDateChanged;
  final Function(DateTime?) onToDateChanged;

  const FilterDatesContainer({
    super.key,
    required this.fromDate,
    required this.toDate,
    required this.onFromDateChanged,
    required this.onToDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;

    return ExpansionTile(
      title: Text(
        LocaleKeys.filterYear.tr(),
        style: styles.expTileTitleTextStyle,
      ),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: [],
    );
  }

  String _getSubtitle() {
    if (fromDate == null && toDate == null) {
      return LocaleKeys.filterDescAll.tr();
    }
    if (fromDate != null && toDate == null) {
      return '${LocaleKeys.filterFromYear.tr()} ${AppDateFormats.yearFormat(fromDate!)}';
    }
    if (fromDate == null && toDate != null) {
      return '${LocaleKeys.filterToYear.tr().capitalizeFirst()} ${AppDateFormats.yearFormat(toDate!)}';
    }

    return '${LocaleKeys.filterFromYear.tr()} ${AppDateFormats.yearFormat(fromDate!)} - '
        '${LocaleKeys.filterToYear.tr()} ${AppDateFormats.yearFormat(toDate!)}';
  }
}

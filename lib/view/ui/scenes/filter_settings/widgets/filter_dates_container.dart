import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/app_date_formats.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/bottom_sheet/blurred_bottom_sheet.dart';
import '../../../widgets/filter_bottom_sheet.dart';
import 'filter_date_picker.dart';

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
      children: [
        TextButton(
          onPressed: () => _openYearDialog(
            context,
            title: LocaleKeys.selectYearFromDialog.tr(),
            maxYear: toDate?.year,
            date: fromDate,
            onDateChanged: onFromDateChanged,
          ),
          child: Text('From'),
        ),
        TextButton(
          onPressed: () => _openYearDialog(
            context,
            title: LocaleKeys.selectYearToDialog.tr(),
            minYear: fromDate?.year,
            date: toDate,
            onDateChanged: onToDateChanged,
          ),
          child: Text('To'),
        ),
      ],
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
      return '${LocaleKeys.filterToYear.tr().capitalizeFirst()}: ${AppDateFormats.yearFormat(toDate!)}';
    }

    return '${LocaleKeys.filterFromYear.tr()} ${AppDateFormats.yearFormat(fromDate!)} '
        '${LocaleKeys.filterToYear.tr()} ${AppDateFormats.yearFormat(toDate!)}';
  }

  void _openYearDialog(
    BuildContext ctx, {
    required String title,
    required DateTime? date,
    required void Function(DateTime?) onDateChanged,
    int? minYear,
    int? maxYear,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: FilterBottomSheet(
        title: title,
        minHeight: 360,
        content: FilterDatePicker(
          minYear: minYear,
          maxYear: maxYear,
          date: date,
          onDateChanged: onDateChanged,
        ),
      ),
    );
  }
}

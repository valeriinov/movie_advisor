import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/app_date_formats.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/locale_keys.g.dart';
import '../bottom_sheet/blurred_bottom_sheet.dart';
import 'filter_bottom_sheet.dart';
import 'filter_date_button.dart';
import 'filter_date_picker.dart';

class FilterDateContainer extends StatelessWidget {
  final String title;
  final DateTime? fromDate;
  final DateTime? toDate;
  final Function(DateTime?) onFromDateChanged;
  final Function(DateTime?) onToDateChanged;

  const FilterDateContainer({
    super.key,
    required this.title,
    required this.fromDate,
    required this.toDate,
    required this.onFromDateChanged,
    required this.onToDateChanged,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;
    final hor = dimens.padHorPrim;
    final styles = context.baseComponentsStyles;

    return ExpansionTile(
      title: Text(title, style: styles.expTileTitleTextStyle),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(hor, 18, hor, 24),
          child: Row(
            children: [
              FilterDateButton(
                label: LocaleKeys.filterFromLabel.tr(),
                format: ButtonDateFormat.date,
                date: fromDate,
                onTap: () => _openYearDialog(
                  context,
                  title: '$title ${LocaleKeys.fromForDialog.tr()}',
                  maxDate: toDate,
                  date: fromDate,
                  onDateChanged: onFromDateChanged,
                ),
              ),
              dimens.spMedium.gapHor(),
              FilterDateButton(
                label: LocaleKeys.filterToLabel.tr(),
                format: ButtonDateFormat.date,
                date: toDate,
                onTap: () => _openYearDialog(
                  context,
                  title: '$title ${LocaleKeys.toForDialog.tr()}',
                  minDate: fromDate,
                  date: toDate,
                  onDateChanged: onToDateChanged,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getSubtitle() {
    if (fromDate == null && toDate == null) {
      return LocaleKeys.filterDescAll.tr();
    }
    if (fromDate != null && toDate == null) {
      return '${LocaleKeys.filterFromYear.tr()} ${AppDateFormats.dayMonthYearDotsFormat(fromDate!)}';
    }
    if (fromDate == null && toDate != null) {
      return '${LocaleKeys.filterToYear.tr().capitalizeFirst()}: ${AppDateFormats.dayMonthYearDotsFormat(toDate!)}';
    }

    return '${LocaleKeys.filterFromYear.tr()} ${AppDateFormats.dayMonthYearDotsFormat(fromDate!)} '
        '${LocaleKeys.filterToYear.tr()} ${AppDateFormats.dayMonthYearDotsFormat(toDate!)}';
  }

  void _openYearDialog(
    BuildContext ctx, {
    required String title,
    required DateTime? date,
    required void Function(DateTime?) onDateChanged,
    DateTime? minDate,
    DateTime? maxDate,
  }) {
    showBlurredBottomSheet(
      isDismissible: false,
      context: ctx,
      useRootNavigator: true,
      child: FilterBottomSheet(
        title: title,
        minHeight: 360,
        content: FilterDatePicker(
          minDate: minDate,
          maxDate: maxDate,
          date: date,
          onDateChanged: onDateChanged,
        ),
      ),
    );
  }
}

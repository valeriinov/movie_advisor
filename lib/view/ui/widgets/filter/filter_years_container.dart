import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/app_date_formats.dart';
import '../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../resources/locale_keys.g.dart';
import '../bottom_sheet/blurred_bottom_sheet.dart';
import 'filter_bottom_sheet.dart';
import 'filter_year_picker.dart';
import '../../scenes/filter_settings/widgets/year_button.dart';

class FilterYearsContainer extends StatelessWidget {
  final DateTime? fromDate;
  final DateTime? toDate;
  final Function(DateTime?) onFromDateChanged;
  final Function(DateTime?) onToDateChanged;

  const FilterYearsContainer({
    super.key,
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
      title: Text(
        LocaleKeys.filterYear.tr(),
        style: styles.expTileTitleTextStyle,
      ),
      subtitle: Text(_getSubtitle(), style: styles.expTileSubtTextStyle),
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(hor, 18, hor, 24),
          child: Row(
            children: [
              YearButton(
                label: LocaleKeys.filterFromLabel.tr(),
                date: fromDate,
                onTap: () => _openYearDialog(
                  context,
                  title: LocaleKeys.selectYearFromDialog.tr(),
                  maxYear: toDate?.year,
                  date: fromDate,
                  onDateChanged: onFromDateChanged,
                ),
              ),
              dimens.spMedium.gapHor(),
              YearButton(
                label: LocaleKeys.filterToLabel.tr(),
                date: toDate,
                onTap: () => _openYearDialog(
                  context,
                  title: LocaleKeys.selectYearToDialog.tr(),
                  minYear: fromDate?.year,
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
        content: FilterYearPicker(
          minYear: minYear,
          maxYear: maxYear,
          date: date,
          onDateChanged: onDateChanged,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../resources/app_date_formats.dart';
import '../../resources/base_theme/inputs/base_inputs_styles_ext.dart';
import '../form/widgets/field_label.dart';

enum ButtonDateFormat { year, date }

class FilterDateButton extends HookWidget {
  final String label;
  final VoidCallback onTap;
  final ButtonDateFormat format;
  final DateTime? date;

  const FilterDateButton({
    super.key,
    required this.label,
    required this.onTap,
    this.format = ButtonDateFormat.year,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    final inputStyles = context.baseInputsStyles;

    final controller = useTextEditingController(text: _getDateString(date));

    final scrollController = useScrollController(keepScrollOffset: false);

    useEffect(() {
      controller.text = _getDateString(date);
      return null;
    }, [date]);

    return Flexible(
      child: Stack(
        children: [
          TextField(
            controller: controller,
            scrollController: scrollController,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              label: FieldLabel(
                content: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            enabled: false,
            readOnly: true,
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(
                  inputStyles.txtFldBorderRadius,
                ),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getDateString(DateTime? date) {
    if (date == null) return '';

    return switch (format) {
      ButtonDateFormat.year => AppDateFormats.yearFormat(date),
      ButtonDateFormat.date => AppDateFormats.dayMonthYearDotsFormat(date),
    };
  }
}

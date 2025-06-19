import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'filter_control_buttons.dart';

class FilterDatePicker extends HookWidget {
  final DateTime? minDate;
  final DateTime? maxDate;
  final DateTime? date;
  final ValueChanged<DateTime?> onDateChanged;

  const FilterDatePicker({
    super.key,
    required this.date,
    required this.onDateChanged,
    this.minDate,
    this.maxDate,
  });

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final minD = useMemoized(() => minDate ?? DateTime(2025), [minDate]);
    final maxD = useMemoized(() => maxDate ?? DateTime.now(), [maxDate]);

    final initial = _initialDate(date, minD, maxD);
    final selectedDate = useState(initial);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildPicker(selectedDate, minD, maxD),
        dimens.spMedium.gapVert(),
        FilterControlButtons(
          onApply: () => onDateChanged(selectedDate.value),
          onReset: () => onDateChanged(null),
        ),
        10.gapVert(),
      ],
    );
  }

  Widget _buildPicker(
    ValueNotifier<DateTime> selectedDate,
    DateTime min,
    DateTime max,
  ) {
    return SizedBox(
      height: 216,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        minimumDate: min,
        maximumDate: max,
        initialDateTime: selectedDate.value,
        onDateTimeChanged: (d) => selectedDate.value = d,
      ),
    );
  }

  DateTime _initialDate(DateTime? d, DateTime min, DateTime max) {
    if (d == null) return max;
    if (d.isBefore(min)) return min;
    if (d.isAfter(max)) return max;
    return d;
  }
}

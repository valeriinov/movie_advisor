import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../resources/base_theme/dimens/base_dimens_ext.dart';
import 'filter_control_buttons.dart';

class FilterYearPicker extends HookWidget {
  static const int _minYear = 1900;

  final int minYear;
  final int? maxYear;
  final DateTime? date;
  final ValueChanged<DateTime?> onDateChanged;

  const FilterYearPicker({
    super.key,
    required this.date,
    required this.onDateChanged,
    int? minYear,
    this.maxYear,
  }) : minYear = minYear ?? _minYear;

  @override
  Widget build(BuildContext context) {
    final dimens = context.baseDimens;

    final maxY = useMemoized(() => maxYear ?? _currentYear(), [maxYear]);
    final years = useMemoized(() => _generatePaddedYears(maxY));

    final initialYear = _getInitialYear(date, maxY);

    final scrollController = useFixedExtentScrollController(
      initialItem: years.indexOf(initialYear),
    );

    final selectedYear = useState(initialYear);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildPicker(scrollController, years, selectedYear, maxY),
        dimens.spMedium.gapVert(),
        FilterControlButtons(
          onApply: () => onDateChanged(_buildDate(selectedYear.value)),
          onReset: () => onDateChanged(null),
        ),
        10.gapVert(),
      ],
    );
  }

  Widget _buildPicker(
    FixedExtentScrollController controller,
    List<int> years,
    ValueNotifier<int> selectedYear,
    int maxYear,
  ) {
    return SizedBox(
      height: 200,
      child: CupertinoPicker(
        scrollController: controller,
        itemExtent: 32,
        onSelectedItemChanged: (i) => _onYearChanged(
          years[i],
          selectedYear,
          controller,
          minYear: minYear,
          maxYear: maxYear,
          years: years,
        ),
        children: years.map((y) => Center(child: Text('$y'))).toList(),
      ),
    );
  }

  int _currentYear() {
    return DateTime.now().year;
  }

  int _getInitialYear(DateTime? date, int max) {
    return date?.year.clamp(minYear, max) ?? max;
  }

  List<int> _generatePaddedYears(int maxYear) {
    final start = minYear - 10;
    final end = maxYear + 10;

    return List.generate(end - start + 1, (i) => start + i);
  }

  DateTime _buildDate(int year) {
    final month = date?.month ?? 1;
    final day = _clampDay(year, month, date?.day);

    return DateTime(year, month, day);
  }

  int _clampDay(int year, int month, int? day) {
    final maxDay = DateTime(year, month + 1, 0).day;
    final d = day ?? 1;

    return d.clamp(1, maxDay);
  }

  void _onYearChanged(
    int newYear,
    ValueNotifier<int> selectedYear,
    FixedExtentScrollController controller, {
    required int minYear,
    required int maxYear,
    required List<int> years,
  }) {
    final clamped = newYear.clamp(minYear, maxYear);

    selectedYear.value = clamped;

    if (_needsAnimate(newYear, clamped)) {
      _animateTo(clamped, controller, years);
    }
  }

  bool _needsAnimate(int newYear, int clampedYear) {
    return newYear != clampedYear;
  }

  void _animateTo(
    int year,
    FixedExtentScrollController controller,
    List<int> years,
  ) {
    final idx = years.indexOf(year);
    controller.animateTo(
      idx * 32.0,
      duration: 300.milliseconds,
      curve: Curves.easeOut,
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/locale_keys.g.dart';

class FilterYearPicker extends HookWidget {
  static const int _minYear = 1900;

  final int year;
  final Function(int?) onYearChanged;

  const FilterYearPicker({
    super.key,
    required this.year,
    required this.onYearChanged,
  });

  @override
  Widget build(BuildContext context) {
    final maxYear = useMemoized(() => DateTime.now().year + 1);
    final paddedYears = useMemoized(() => _generatePaddedYears(maxYear));

    final scrollController = useFixedExtentScrollController(
      initialItem: paddedYears.indexWhere((y) => y == year),
    );

    final selectedYear = useState(year);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 200,
          child: CupertinoPicker(
            scrollController: scrollController,
            itemExtent: 32,
            onSelectedItemChanged:
                (index) => _onYearChanged(
                  paddedYears[index],
                  selectedYear,
                  scrollController,
                  minYear: _minYear,
                  maxYear: maxYear,
                  paddedYears: paddedYears,
                ),
            children:
                paddedYears
                    .map((y) => Center(child: Text(y.toString())))
                    .toList(),
          ),
        ),
        IntrinsicWidth(
          child: FilledButton(
            onPressed:
                _isYearChanged(selectedYear.value)
                    ? () => _applySelection(selectedYear)
                    : null,
            child: Text(LocaleKeys.filterApplyButton.tr()),
          ),
        ),
      ],
    );
  }

  List<int> _generatePaddedYears(int maxYear) {
    final startYear = _minYear - 10;
    final endYear = maxYear + 10;

    return List.generate(endYear - startYear + 1, (i) => startYear + i);
  }

  void _onYearChanged(
    int newYear,
    ValueNotifier<int> selectedYear,
    FixedExtentScrollController scrollController, {
    required int minYear,
    required int maxYear,
    required List<int> paddedYears,
  }) {
    final clampedYear = newYear.clamp(minYear, maxYear);

    selectedYear.value = clampedYear;

    if (clampedYear != newYear) {
      _animateToYear(clampedYear, scrollController, paddedYears);
    }
  }

  void _animateToYear(
    int year,
    FixedExtentScrollController controller,
    List<int> paddedYears,
  ) {
    final index = paddedYears.indexOf(year);

    controller.animateTo(
      index * 32.0,
      duration: 300.milliseconds,
      curve: Curves.easeOut,
    );
  }

  bool _isYearChanged(int newYear) => newYear != year;

  void _applySelection(ValueNotifier<int> selectedYear) {
    onYearChanged(selectedYear.value);
  }
}

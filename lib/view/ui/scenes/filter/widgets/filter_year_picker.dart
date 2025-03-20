import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../resources/base_theme/buttons/base_buttons_styles_ext.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
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
    final dimens = context.baseDimens;

    final maxYear = useMemoized(() => DateTime.now().year);
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
        dimens.spMedium.gapVert(),
        _buildControlButtonsBar(selectedYear),
        10.gapVert(),
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

  Widget _buildControlButtonsBar(ValueNotifier<int> selectedYear) {
    return Builder(
      builder: (context) {
        final colors = context.baseColors;
        final styles = context.baseButtonStyles;

        return Container(
          decoration: _buildContainerDecoration(colors),
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildResetButton(context, colors, styles),
              _buildApplyButton(context, colors, selectedYear),
            ],
          ),
        );
      },
    );
  }

  BoxDecoration _buildContainerDecoration(BaseColors colors) {
    return BoxDecoration(
      color: colors.filterCtrlBarBg,
      borderRadius: BorderRadiusCircular(25),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          blurRadius: 15,
          color: colors.filterCtrlBarShadow,
        ),
      ],
    );
  }

  Widget _buildResetButton(
    BuildContext context,
    BaseColors colors,
    BaseButtonStyles styles,
  ) {
    return IntrinsicWidth(
      child: TextButton(
        style: FilledButton.styleFrom(
          overlayColor: colors.filterCtrlBarResetBtnOverlay,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusCircular(25)),
          foregroundColor: colors.btnFillPrimBg,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          textStyle: styles.fillBtnPrimTextStyle,
        ),
        onPressed: () => _resetSelection(context),
        child: Text(LocaleKeys.filterResetButton.tr()),
      ),
    );
  }

  Widget _buildApplyButton(
    BuildContext context,
    BaseColors colors,
    ValueNotifier<int> selectedYear,
  ) {
    return IntrinsicWidth(
      child: FilledButton(
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusCircular(25)),
          padding: const EdgeInsets.symmetric(horizontal: 14),
        ),
        onPressed: () => _applySelection(context, selectedYear),
        child: Text(LocaleKeys.filterApplyButton.tr()),
      ),
    );
  }

  void _applySelection(BuildContext context, ValueNotifier<int> selectedYear) {
    onYearChanged(selectedYear.value);
    Navigator.of(context).pop();
  }

  void _resetSelection(BuildContext context) {
    onYearChanged(null);
    Navigator.of(context).pop();
  }
}

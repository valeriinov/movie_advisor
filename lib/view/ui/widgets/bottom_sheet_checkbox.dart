import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';

class BottomSheetCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final TextStyle? labelStyle;
  final ValueChanged<bool?>? onChanged;

  const BottomSheetCheckbox({
    super.key,
    required this.label,
    required this.value,
    this.labelStyle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.baseColors;

    return ListTileTheme(
      horizontalTitleGap: 0.0,
      child: CheckboxListTile(
        value: value,
        checkboxScaleFactor: 1.1,
        onChanged: onChanged,
        fillColor: WidgetStateResolver(selected: colors.botSheetCheckboxFill),
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(color: colors.botSheetCheckboxBorder, width: 1.5),
        title: Text(
          label,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: labelStyle ?? TextStyle(color: colors.botSheetFg),
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

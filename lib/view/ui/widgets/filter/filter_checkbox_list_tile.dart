import 'package:flutter/material.dart';

import '../../resources/base_theme/colors/base_colors_ext.dart';

class FilterCheckboxListTile extends StatelessWidget {
  final String label;
  final bool value;
  final double horizontalTitleGap;
  final EdgeInsets? contentPadding;
  final TextStyle? labelStyle;
  final ValueChanged<bool?>? onChanged;

  const FilterCheckboxListTile({
    super.key,
    required this.label,
    required this.value,
    this.horizontalTitleGap = 10.0,
    this.contentPadding,
    this.labelStyle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return ListTileTheme(
      horizontalTitleGap: horizontalTitleGap,
      child: CheckboxListTile(
        contentPadding: contentPadding,
        value: value,
        checkboxScaleFactor: 1.1,
        onChanged: onChanged,
        title: Text(
          label,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: labelStyle ?? _defaultLabelStyle(context),
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }

  TextStyle _defaultLabelStyle(BuildContext context) {
    final colors = context.baseColors;

    return TextStyle(
      color: onChanged != null
          ? colors.listTilePrimSubtitle
          : colors.listTilePrimTitleDis,
    );
  }
}

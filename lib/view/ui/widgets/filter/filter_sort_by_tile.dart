import 'package:flutter/material.dart';

import '../../resources/base_theme/components/base_components_styles_ext.dart';

class FilterSortByTile<T> extends StatelessWidget {
  final String title;
  final bool selected;
  final T value;
  final T groupValue;
  final void Function(T?) onChanged;

  const FilterSortByTile({
    super.key,
    required this.title,
    required this.selected,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final styles = context.baseComponentsStyles;
    final titleStyle = styles.listTileSecTitleTextStyle;
    final selectedTitleStyle = styles.listTileSecTitleTextStyleSelect;

    return RadioListTile<T>(
      title: Text(title, style: selected ? selectedTitleStyle : titleStyle),
      value: value,
      groupValue: groupValue,
      selected: selected,
      onChanged: onChanged,
    );
  }
}

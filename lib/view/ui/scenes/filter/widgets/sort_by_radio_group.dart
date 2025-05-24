import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../resources/base_theme/components/base_components_styles_ext.dart';
import '../../../resources/ext/sort_by_desc.dart';

class SortByRadioGroup extends StatelessWidget {
  final bool isMovies;
  final SortBy currentSortBy;
  final void Function(SortBy) onSortByChanged;

  const SortByRadioGroup({
    super.key,
    required this.isMovies,
    required this.currentSortBy,
    required this.onSortByChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isMovies
              ? SortBy.values
                    .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
                    .toList()
              : SortBy.valuesSeries
                    .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
                    .toList(),
        ),
      ),
    );
  }

  Widget _buildSortByRadioListTile(BuildContext context, SortBy sortBy) {
    final styles = context.baseComponentsStyles;
    final titleStyle = styles.listTileSecTitleTextStyle;
    final selectedTitleStyle = styles.listTileSecTitleTextStyleSelect;

    final isSelected = currentSortBy == sortBy;

    return RadioListTile<SortBy>(
      title: Text(
        sortBy.desc,
        style: isSelected ? selectedTitleStyle : titleStyle,
      ),
      value: sortBy,
      groupValue: currentSortBy,
      selected: isSelected,
      onChanged: (value) => _onSortSelected(context, value),
    );
  }

  void _onSortSelected(BuildContext context, SortBy? sortBy) {
    Navigator.of(context).pop();

    if (sortBy == null) return;

    onSortByChanged(sortBy);
  }
}

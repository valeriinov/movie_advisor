import 'package:flutter/material.dart';

import '../../../../../domain/entities/filter/sort_by.dart';
import '../../../resources/ext/sort_by_desc.dart';
import '../../../widgets/filter/filter_sort_by_radio_wrapper.dart';
import '../../../widgets/filter/filter_sort_by_tile.dart';

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
    return FilterSortByRadioWrapper(
      children: isMovies
          ? SortBy.values
                .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
                .toList()
          : SortBy.valuesSeries
                .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
                .toList(),
    );
  }

  Widget _buildSortByRadioListTile(BuildContext context, SortBy sortBy) {
    final isSelected = currentSortBy == sortBy;

    return FilterSortByTile(
      title: sortBy.desc,
      selected: isSelected,
      value: sortBy,
      groupValue: currentSortBy,
      onChanged: (value) => _onSortSelected(context, value),
    );
  }

  void _onSortSelected(BuildContext context, SortBy? sortBy) {
    Navigator.of(context).pop();

    if (sortBy == null) return;

    onSortByChanged(sortBy);
  }
}

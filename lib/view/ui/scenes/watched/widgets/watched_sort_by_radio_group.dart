import 'package:flutter/material.dart';

import '../../../../../domain/entities/watched_filter/watched_sort_by.dart';
import '../../../resources/ext/watched_sort_by_desc.dart';
import '../../../widgets/filter/filter_sort_by_radio_wrapper.dart';
import '../../../widgets/filter/filter_sort_by_tile.dart';

class WatchedSortByRadioGroup extends StatelessWidget {
  final WatchedSortBy currentSortBy;
  final void Function(WatchedSortBy) onSortByChanged;

  const WatchedSortByRadioGroup({
    super.key,
    required this.currentSortBy,
    required this.onSortByChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FilterSortByRadioWrapper(
      children: WatchedSortBy.values
          .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
          .toList(),
    );
  }

  Widget _buildSortByRadioListTile(BuildContext context, WatchedSortBy sortBy) {
    final isSelected = currentSortBy == sortBy;

    return FilterSortByTile(
      title: sortBy.desc,
      selected: isSelected,
      value: sortBy,
      groupValue: currentSortBy,
      onChanged: (value) => _onSortSelected(context, value),
    );
  }

  void _onSortSelected(BuildContext context, WatchedSortBy? sortBy) {
    Navigator.of(context).pop();

    if (sortBy == null) return;

    onSortByChanged(sortBy);
  }
}

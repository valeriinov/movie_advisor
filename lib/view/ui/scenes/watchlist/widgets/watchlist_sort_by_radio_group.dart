import 'package:flutter/material.dart';

import '../../../../../domain/entities/watchlist_filter/watchlist_sort_by.dart';
import '../../../resources/ext/watchlist_sort_by_desc.dart';
import '../../../widgets/filter/filter_sort_by_radio_wrapper.dart';
import '../../../widgets/filter/filter_sort_by_tile.dart';

class WatchlistSortByRadioGroup extends StatelessWidget {
  final WatchlistSortBy currentSortBy;
  final void Function(WatchlistSortBy) onSortByChanged;

  const WatchlistSortByRadioGroup({
    super.key,
    required this.currentSortBy,
    required this.onSortByChanged,
  });

  @override
  Widget build(BuildContext context) {
    return FilterSortByRadioWrapper(
      children: WatchlistSortBy.values
          .map((sortBy) => _buildSortByRadioListTile(context, sortBy))
          .toList(),
    );
  }

  Widget _buildSortByRadioListTile(
    BuildContext context,
    WatchlistSortBy sortBy,
  ) {
    final isSelected = currentSortBy == sortBy;

    return FilterSortByTile(
      title: sortBy.desc,
      selected: isSelected,
      value: sortBy,
      groupValue: currentSortBy,
      onChanged: (value) => _onSortSelected(context, value),
    );
  }

  void _onSortSelected(BuildContext context, WatchlistSortBy? sortBy) {
    Navigator.of(context).pop();

    if (sortBy == null) return;

    onSortByChanged(sortBy);
  }
}

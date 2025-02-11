import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../widgets/app_bar/floating_search_bar.dart';

class SearchScreenContent extends StatelessWidget {
  final Function(String?)? onSearch;
  final VoidCallback? onMoreTap;

  const SearchScreenContent({
    super.key,
    this.onSearch,
    this.onMoreTap,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(children: [
      FloatingSearchBar(
        onSearch: onSearch,
        onMoreTap: onMoreTap,
      ),
      SliverList.builder(
          itemCount: 20,
          itemBuilder: (_, i) {
            return ListTile(
              title: Text('Item $i'),
            );
          })
    ]);
  }
}

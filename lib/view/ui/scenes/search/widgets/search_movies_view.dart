import 'package:flutter/material.dart';

import 'search_screen_content.dart';

class SearchMoviesView extends StatelessWidget {
  final VoidCallback toggleContentMode;
  final ScrollController scrollController;

  const SearchMoviesView({super.key,
    required this.toggleContentMode,
    required this.scrollController,});

  @override
  Widget build(BuildContext context) {
    return SearchScreenContent(
      // TODO: Add modal bottom sheet
      onMoreTap: toggleContentMode,
    );
  }
}

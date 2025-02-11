import 'package:flutter/material.dart';
import '../../base/content_mode.dart';
import 'widgets/search_screen_view.dart';

class SearchScreen extends StatelessWidget {
  final ContentMode initContentMode;

  const SearchScreen({super.key, required this.initContentMode});

  @override
  Widget build(BuildContext context) {
    return SearchScreenView(initContentMode: initContentMode);
  }
}

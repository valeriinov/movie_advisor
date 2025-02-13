import 'package:flutter/material.dart';
import '../model/details_tab.dart';

class DetailsTabContent extends StatelessWidget {
  final DetailsTab currentTab;

  const DetailsTabContent({
    super.key,
    required this.currentTab,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.zero);
  }
}

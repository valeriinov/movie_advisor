import 'package:flutter/material.dart';

import '../../../navigation/routes/home_routes.dart';
import '../../../widgets/app_bar/floating_search_bar.dart';

class HomeFloatingTopBar extends StatelessWidget {
  const HomeFloatingTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar(
      isSearchEnabled: false,
      autoFocus: false,
      onSearchTap: () => SearchRoute().go(context),
      onFilterTap: () => FilterRoute().go(context),
    );
  }
}

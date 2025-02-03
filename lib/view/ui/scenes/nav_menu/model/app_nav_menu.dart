import 'package:flutter/material.dart';

enum AppNavMenu {
  home(
    label: 'Home', // TODO: Localize label
    screenTitle: 'Home Screen', // TODO: Localize screen title
    icon: Icons.menu, // TODO: Update icon
  ),
  watchList(
    label: 'Watch List', // TODO: Localize label
    screenTitle: 'Watch List Screen', // TODO: Localize screen title
    icon: Icons.menu, // TODO: Update icon
  ),
  watched(
    label: 'Watched', // TODO: Localize label
    screenTitle: 'Watched Screen', // TODO: Localize screen title
    icon: Icons.menu, // TODO: Update icon
  ),
  more(
    label: 'More', // TODO: Localize label
    screenTitle: 'More Screen', // TODO: Localize screen title
    icon: Icons.menu, // TODO: Update icon
  );

  final String label;
  final String? screenTitle;
  final IconData? icon; // TODO: It can be String for custom icons

  const AppNavMenu({
    required this.label,
    this.screenTitle,
    this.icon,
  });
  factory AppNavMenu.fromIndex(int index) {
    return AppNavMenu.values.firstWhere(
      (e) => e.index == index,
      orElse: () => AppNavMenu.values.first,
    );
  }
}

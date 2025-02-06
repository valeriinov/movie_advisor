import 'package:easy_localization/easy_localization.dart';

import '../../../resources/app_images.dart';
import '../../../resources/locale_keys.g.dart';

enum AppNavMenu {
  home(
    label: LocaleKeys.homeNavTab,
    iconPath: AppImages.homeIcon,
  ),
  watchList(
    label: LocaleKeys.watchlistNavTab,
    iconPath: AppImages.watchListIcon,
  ),
  watched(
    label: LocaleKeys.watchedNavTab,
    iconPath: AppImages.watchedIcon,
  ),
  more(
    label: LocaleKeys.moreNavTab,
    iconPath: AppImages.moreHorIcon,
  );

  final String _label;
  final String iconPath;

  String get label => _label.tr();

  const AppNavMenu({
    required String label,
    required this.iconPath,
  }) : _label = label;

  factory AppNavMenu.fromIndex(int index) {
    return AppNavMenu.values.firstWhere(
      (e) => e.index == index,
      orElse: () => AppNavMenu.values.first,
    );
  }
}

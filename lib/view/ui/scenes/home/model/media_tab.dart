import 'package:easy_localization/easy_localization.dart';

import '../../../resources/locale_keys.g.dart';

enum MediaTab {
  nowPlaying(LocaleKeys.nowPlayingTab),
  upcoming(LocaleKeys.upcomingTab),
  topRated(LocaleKeys.topRatedTab),
  popular(LocaleKeys.popularTab);

  final String _desc;

  static List<String> get descriptions =>
      MediaTab.values.map((e) => e.desc).toList();

  String get desc => _desc.tr();

  const MediaTab(this._desc);

  factory MediaTab.fromIndex(int index) {
    return MediaTab.values.firstWhere(
      (e) => e.index == index,
      orElse: () => MediaTab.nowPlaying,
    );
  }
}

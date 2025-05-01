import 'package:easy_localization/easy_localization.dart';

import '../../../resources/locale_keys.g.dart';

enum PersonTab {
  biography(LocaleKeys.personBiographyTab),
  movies(LocaleKeys.personMoviesTab),
  series(LocaleKeys.personSeriesTab);

  final String _desc;

  static List<String> get descriptions =>
      PersonTab.values.map((e) => e.desc).toList();

  String get desc => _desc.tr();

  const PersonTab(this._desc);

  factory PersonTab.fromIndex(int index) {
    return PersonTab.values.firstWhere(
      (e) => e.index == index,
      orElse: () => PersonTab.biography,
    );
  }
}

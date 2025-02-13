import 'package:easy_localization/easy_localization.dart';

import '../../../resources/locale_keys.g.dart';

enum DetailsTab {
  about(LocaleKeys.detailsAboutTab),
  reviews(LocaleKeys.detailsReviewsTab),
  cast(LocaleKeys.detailsCastTab);

  final String _desc;

  static List<String> get descriptions =>
      DetailsTab.values.map((e) => e.desc).toList();

  String get desc => _desc.tr();

  const DetailsTab(this._desc);

  factory DetailsTab.fromIndex(int index) {
    return DetailsTab.values.firstWhere(
      (e) => e.index == index,
      orElse: () => DetailsTab.about,
    );
  }
}

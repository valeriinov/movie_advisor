import 'package:easy_localization/easy_localization.dart';

import '../../../common/utils/ext/double/to_rating.dart';
import 'locale_keys.g.dart';

abstract final class AppRateFormat {
  static String createRateString(double tmdbRate, [int? userRate]) {
    final tmdbRating = LocaleKeys.ratingTMDBDesc.tr(
      args: [tmdbRate.toRatingString()],
    );

    final userRating =
        userRate != null && userRate > 0
            ? ' | ${LocaleKeys.ratingUserDesc.tr(args: [userRate.toDouble().toString()])}'
            : '';

    return '$tmdbRating$userRating';
  }
}

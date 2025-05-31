import 'package:easy_localization/easy_localization.dart';

import '../../../../common/app_locales.dart';
import '../../../../domain/entities/base_media/country.dart';
import '../locale_keys.g.dart';

extension CountryDesc on Country {
  String get desc {
    return switch (this) {
      Country.unitedStates => LocaleKeys.unitedStates.tr(),
      Country.unitedKingdom => LocaleKeys.unitedKingdom.tr(),
      Country.canada => LocaleKeys.canada.tr(),
      Country.germany => LocaleKeys.germany.tr(),
      Country.france => LocaleKeys.france.tr(),
      Country.italy => LocaleKeys.italy.tr(),
      Country.spain => LocaleKeys.spain.tr(),
      Country.china => LocaleKeys.china.tr(),
      Country.japan => LocaleKeys.japan.tr(),
      Country.southKorea => LocaleKeys.southKorea.tr(),
      Country.india => LocaleKeys.india.tr(),
      Country.brazil => LocaleKeys.brazil.tr(),
      Country.australia => LocaleKeys.australia.tr(),
      Country.russia => LocaleKeys.russia.tr(),
      Country.ukraine => LocaleKeys.ukraine.tr(),
      Country.latvia => LocaleKeys.latvia.tr(),
      Country.lithuania => LocaleKeys.lithuania.tr(),
      Country.estonia => LocaleKeys.estonia.tr(),
      Country.poland => LocaleKeys.poland.tr(),
      Country.czechRepublic => LocaleKeys.czechRepublic.tr(),
      Country.hungary => LocaleKeys.hungary.tr(),
      Country.greece => LocaleKeys.greece.tr(),
      Country.turkey => LocaleKeys.turkey.tr(),
      Country.mexico => LocaleKeys.mexico.tr(),
      Country.none => '',
    };
  }
}

abstract final class CountryAlphabet {
  static List<Country> values(String langCode) {
    return switch (langCode) {
      final lang when lang == AppLocales.uk.name => [
        Country.australia,
        Country.brazil,
        Country.unitedKingdom,
        Country.greece,
        Country.estonia,
        Country.india,
        Country.spain,
        Country.italy,
        Country.canada,
        Country.china,
        Country.latvia,
        Country.lithuania,
        Country.mexico,
        Country.germany,
        Country.southKorea,
        Country.poland,
        Country.russia,
        Country.unitedStates,
        Country.turkey,
        Country.hungary,
        Country.ukraine,
        Country.czechRepublic,
        Country.france,
        Country.japan,
      ],
      _ => [
        Country.australia,
        Country.brazil,
        Country.canada,
        Country.china,
        Country.czechRepublic,
        Country.estonia,
        Country.france,
        Country.germany,
        Country.greece,
        Country.hungary,
        Country.india,
        Country.italy,
        Country.japan,
        Country.latvia,
        Country.lithuania,
        Country.mexico,
        Country.poland,
        Country.russia,
        Country.southKorea,
        Country.spain,
        Country.turkey,
        Country.ukraine,
        Country.unitedKingdom,
        Country.unitedStates,
      ],
    };
  }
}

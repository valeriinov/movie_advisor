import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../common/utils/ext/string/localized_sort_str.dart';
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
    return Country.valuesWithoutNone.sorted(
      (a, b) => a.desc
          .localizedSortValue(langCode)
          .compareTo(b.desc.localizedSortValue(langCode)),
    );
  }
}

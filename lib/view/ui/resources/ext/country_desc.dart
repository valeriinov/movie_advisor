import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/filter/country.dart';
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
      Country.none => '',
    };
  }
}

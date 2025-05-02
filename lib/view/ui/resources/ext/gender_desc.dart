import 'package:easy_localization/easy_localization.dart';

import '../../../../domain/entities/person/gender.dart';
import '../locale_keys.g.dart';

extension GenderDesc on Gender {
  String get desc {
    return switch (this) {
      Gender.male => LocaleKeys.maleDesc.tr(),
      Gender.female => LocaleKeys.femaleDesc.tr(),
      Gender.none => '',
    };
  }
}

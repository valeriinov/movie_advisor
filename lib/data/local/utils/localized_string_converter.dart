import 'package:drift/drift.dart';

import '../../dto/localized_string.dart';

final TypeConverter<LocalizedString, String> localizedStringConverter =
    TypeConverter.json2(
      fromJson:
          (json) => LocalizedString.fromJson(json as Map<String, dynamic>),
      toJson: (str) => str.toJson(),
    );

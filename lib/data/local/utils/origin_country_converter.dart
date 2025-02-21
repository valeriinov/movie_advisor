import 'package:drift/drift.dart';

final TypeConverter<List<String>, String> countryConverter =
    TypeConverter.json2(
      fromJson:
          (json) => (json as List<dynamic>).map((e) => e.toString()).toList(),
      toJson: (countries) => countries,
    );

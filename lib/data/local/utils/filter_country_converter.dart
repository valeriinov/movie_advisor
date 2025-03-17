import 'package:drift/drift.dart';

import '../../dto/filter/country_dto.dart';

final TypeConverter<List<CountryDto>, String> filterCountryConverter =
    TypeConverter.json2(
      fromJson:
          (json) =>
              (json as List<dynamic>)
                  .map((e) => CountryDtoMapper.fromValue(e))
                  .toList(),
      toJson: (countries) => countries.map((e) => e.toValue()).toList(),
    );

import 'package:drift/drift.dart';

import '../../dto/filter/sort_by_dto.dart';

final TypeConverter<SortByDto, String> filterSortByConverter =
    TypeConverter.json2(
      fromJson: (val) => SortByDtoMapper.fromValue(val),
      toJson: (val) => val.toValue(),
    );

import 'package:drift/drift.dart';

import '../../dto/watched_filter/watched_sort_by_dto.dart';

final TypeConverter<WatchedSortByDto, String> watchedFilterSortByConverter =
    TypeConverter.json2(
      fromJson: (val) => WatchedSortByDtoMapper.fromValue(val),
      toJson: (val) => val.toValue(),
    );

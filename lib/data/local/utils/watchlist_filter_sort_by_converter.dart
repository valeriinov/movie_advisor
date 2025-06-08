import 'package:drift/drift.dart';

import '../../dto/watchlist_filter/watchlist_sort_by_dto.dart';

final TypeConverter<WatchlistSortByDto, String> watchlistFilterSortByConverter =
    TypeConverter.json2(
      fromJson: (val) => WatchlistSortByDtoMapper.fromValue(val),
      toJson: (val) => val.toValue(),
    );

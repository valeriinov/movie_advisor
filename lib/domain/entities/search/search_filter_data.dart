import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'search_filter_data.mapper.dart';

@mappableEntity
class SearchFilterData with SearchFilterDataMappable {
  final String? query;

  const SearchFilterData({this.query});

  bool get isDefault => this == SearchFilterData();
}

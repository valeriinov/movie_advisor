import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';

part 'list_with_pagination_data.mapper.dart';

@mappableEntity
final class ListWithPaginationData<T> with ListWithPaginationDataMappable<T> {
  final int currentPage;
  final bool isLastPage;
  final List<T> items;

  const ListWithPaginationData({
    required this.items,
    this.currentPage = -1,
    this.isLastPage = true,
  });

  ListWithPaginationData<T> copyWithUpdateItems(List<T>? prevItems,
      {bool isNewPageLoaded = true}) {
    return copyWith(
      items: getUpdatedItems(prevItems ?? [], isNewPageLoaded: isNewPageLoaded),
    );
  }

  List<T> getUpdatedItems(List<T> prevItems, {bool isNewPageLoaded = true}) {
    final isFirstPage = currentPage == 0;
    return isNewPageLoaded && !isFirstPage
        ? <T>{...prevItems, ...items}.toList()
        : items;
  }
}

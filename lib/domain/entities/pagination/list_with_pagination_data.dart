import 'package:dart_mappable/dart_mappable.dart';

import '../mappable_entity.dart';
import '../movie/movie_short_data.dart';
import '../series/series_short_data.dart';

part 'list_with_pagination_data.mapper.dart';

/// A type alias for [ListWithPaginationData] with paginated [MovieShortData].
typedef PaginatedMovies = ListWithPaginationData<MovieShortData>;

/// A type alias for [ListWithPaginationData] with paginated [SeriesShortData].
typedef PaginatedSeries = ListWithPaginationData<SeriesShortData>;

/// Represents a paginated list of items with metadata about the
/// current page and pagination status.
///
/// This generic class holds a list of items of type [T] and provides information
/// about whether there are more pages to load.
@mappableEntity
final class ListWithPaginationData<T> with ListWithPaginationDataMappable<T> {
  /// The current page number in pagination.
  final int currentPage;

  /// Whether this is the last page in the paginated list.
  final bool isLastPage;

  /// The list of items of type [T] contained in the current page.
  final List<T> items;

  const ListWithPaginationData({
    required this.items,
    this.currentPage = -1,
    this.isLastPage = true,
  });

  /// Creates a new instance with an updated list of items.
  ///
  /// The [prevItems] parameter is the list of items from previous pages.
  /// If `null`, an empty list is used.
  /// The [isNewPageLoaded] parameter determines how the list is updated.
  /// If `true` and this is not the first page, new items are merged with previous items.
  /// If `false` or this is the first page, previous items are not applied, and only new items are used.
  ///
  /// This ensures that the list either represents a new content set, for example when refreshing data,
  /// or extends the previous content, for example when loading additional paginated data.
  ListWithPaginationData<T> copyWithUpdateItems(
    List<T>? prevItems, {
    bool isNewPageLoaded = true,
  }) {
    return copyWith(
      items: getUpdatedItems(prevItems ?? [], isNewPageLoaded: isNewPageLoaded),
    );
  }

  /// Returns an updated list of items based on pagination rules.
  ///
  /// The [prevItems] parameter is the list of previously loaded items.
  /// The [isNewPageLoaded] parameter controls how the list is updated.
  /// If `true` and this is not the first page, new items are merged with previous items.
  /// If `false` or this is the first page, previous items are not applied, and only new items are used.
  ///
  /// This ensures that the list either represents a new content set, for example when refreshing data,
  /// or extends the previous content, for example when loading additional paginated data.
  List<T> getUpdatedItems(List<T> prevItems, {bool isNewPageLoaded = true}) {
    final isFirstPage = currentPage == 1;
    return isNewPageLoaded && !isFirstPage
        ? <T>{...prevItems, ...items}.toList()
        : items;
  }
}

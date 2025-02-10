import 'package:flutter/material.dart';

/// {@category Utils}
///
/// A class representing the state of pagination.
/// This class holds the current page number,
/// loading status, and whether the last page has been reached.
class AppPaginationState {
  final int currentPage;
  final bool isLoading;
  final bool isLastPage;

  const AppPaginationState({
    required this.currentPage,
    required this.isLoading,
    required this.isLastPage,
  });
}

/// {@category Utils}
///
/// A controller for handling scroll-based pagination in a Flutter application.
/// This controller uses a [ScrollController] to listen for scroll events and trigger
/// the loading of the next page when the user scrolls near the end of the list.
///
/// Example:
/// ```dart
/// class MyPaginatedList extends StatefulWidget {
///   @override
///   _MyPaginatedListState createState() => _MyPaginatedListState();
/// }
///
/// class _MyPaginatedListState extends State<MyPaginatedList> {
///   late ScrollPaginationController _paginationController;
///
///   @override
///   void initState() {
///     super.initState();
///     _paginationController = ScrollPaginationController();
///     _paginationController.init(
///       getPaginationState: () => PaginationState(
///         currentPage: 1,
///         isLoading: false,
///         isLastPage: false,
///       ),
///       loadNextPage: ({required int page}) {
///         // Load the next page
///       },
///     );
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     return ListView.builder(
///       controller: _paginationController.scrollController,
///       itemCount: 20, // Example item count
///       itemBuilder: (context, index) {
///         return ListTile(
///           title: Text('Item $index'),
///         );
///       },
///     );
///   }
///
///   @override
///   void dispose() {
///     _paginationController.dispose();
///     super.dispose();
///   }
/// }
/// ```
class AppScrollPaginationController {
  final ScrollController scrollController;

  double _minLoadNextPageScrollPositionPercent = 0.4;

  late AppPaginationState Function() _getPaginationState;
  late void Function({required int page}) _loadNextPage;

  double? _prevMaxExtent;

  AppScrollPaginationController({ScrollController? scrollController})
      : scrollController = scrollController ?? ScrollController();

  /// Initializes the controller with necessary dependencies.
  ///
  /// The [getPaginationState] argument is a function that returns the current pagination state.
  /// The [loadNextPage] argument is a function that triggers the loading of the next page,
  /// given the `page` parameter indicating the page number to load.
  ///
  /// The [minLoadNextPageScrollPositionPercent] argument defines the scroll position percentage
  /// at which the next page should be loaded. The default value is 0.4.
  void init({
    required AppPaginationState Function() getPaginationState,
    required void Function({required int page}) loadNextPage,
    double minLoadNextPageScrollPositionPercent = 0.4,
  }) {
    _minLoadNextPageScrollPositionPercent =
        minLoadNextPageScrollPositionPercent;

    _getPaginationState = getPaginationState;
    _loadNextPage = loadNextPage;

    scrollController.addListener(_scrollListener);
  }

  /// Disposes of the scroll controller and removes its listener.
  ///
  /// **Important:** Always call this method to clean up resources when
  /// the controller is no longer needed.
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
  }

  void _scrollListener() {
    final state = _getPaginationState();

    if (_isReachedMinLoadNextPagePosition(state.currentPage) &&
        !state.isLoading &&
        !state.isLastPage) {
      _loadNextPage(page: state.currentPage + 1);
    }
  }

  bool _isReachedMinLoadNextPagePosition(int currentPage) {
    if (currentPage == 0) _prevMaxExtent = null;

    final maxExtent = scrollController.position.maxScrollExtent;
    final position = scrollController.position.pixels;

    if (_prevMaxExtent != null && position < _prevMaxExtent!) return false;

    final pagePosition = position - (_prevMaxExtent ?? 0);
    final pageMaxExtent = maxExtent - (_prevMaxExtent ?? 0);

    final isPositionReached = pageMaxExtent > 0 &&
        pagePosition > (pageMaxExtent * _minLoadNextPageScrollPositionPercent);

    if (isPositionReached) {
      _prevMaxExtent = maxExtent;
    }

    return isPositionReached;
  }
}

extension PaginationHandler on int? {
  bool isLastPage(int? totalPages) {
    final currentPage = this ?? 1;
    final lastPage = totalPages ?? 1;

    return lastPage <= currentPage;
  }
}

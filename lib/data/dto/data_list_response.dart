abstract class DataListResponse<T> {
  final int? page;

  final int? totalPages;

  final List<T>? results;

  const DataListResponse({this.page, this.results, this.totalPages});
}

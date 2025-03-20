enum SortBy {
  popularityAsc,
  popularityDesc,
  releaseDateAsc,
  releaseDateDesc,
  revenueAsc,
  revenueDesc,
  voteAverageAsc,
  voteAverageDesc;

  static List<SortBy> get valuesSeries => [
    popularityAsc,
    popularityDesc,
    releaseDateAsc,
    releaseDateDesc,
    voteAverageAsc,
    voteAverageDesc,
  ];
}

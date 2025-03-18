enum MovieGenre {
  action,
  adventure,
  animation,
  comedy,
  crime,
  documentary,
  drama,
  family,
  fantasy,
  history,
  horror,
  music,
  mystery,
  romance,
  scienceFiction,
  tvMovie,
  thriller,
  war,
  western,
  none;

  static List<MovieGenre> get valuesWithoutNone =>
      values.where((e) => e != none).toList();
}

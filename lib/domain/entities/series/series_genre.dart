enum SeriesGenre {
  actionAndAdventure,
  animation,
  comedy,
  crime,
  documentary,
  drama,
  family,
  kids,
  mystery,
  news,
  reality,
  sciFiAndFantasy,
  soap,
  talk,
  warAndPolitics,
  western,
  none;

  static List<SeriesGenre> get valuesWithoutNone =>
      values.where((e) => e != none).toList();
}

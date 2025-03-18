enum Country {
  unitedStates,
  unitedKingdom,
  canada,
  germany,
  france,
  italy,
  spain,
  china,
  japan,
  southKorea,
  india,
  brazil,
  australia,
  russia,
  ukraine,
  none;

  static List<Country> get valuesWithoutNone =>
      values.where((e) => e != none).toList();
}

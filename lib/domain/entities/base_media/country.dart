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
  latvia,
  lithuania,
  estonia,
  poland,
  czechRepublic,
  hungary,
  greece,
  turkey,
  mexico,
  none;

  static List<Country> get valuesWithoutNone =>
      values.where((e) => e != none).toList();
}

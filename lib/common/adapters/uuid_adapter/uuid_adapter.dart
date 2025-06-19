/// A utility class containing functionality for generating UUIDs.
abstract interface class UuidAdapter {
  /// Generates a Version 4 UUID (random).
  ///
  /// Returns a [String] representation of a randomly generated UUID.
  String v4();
}

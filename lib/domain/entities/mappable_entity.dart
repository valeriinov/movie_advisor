import 'package:dart_mappable/dart_mappable.dart';

/// {@category Entities}
///
/// A preconfigured [MappableClass] for generating utility methods without serialization.
///
/// Includes the following generated methods:
/// - `copyWith`: A copy constructor that creates a new instance with updated values.
/// - `==`: An equality operator that compares two instances for equality.
/// - `toString`: A string representation of the instance for debugging.
///
/// Example:
/// ```dart
/// @mappableEntity
/// class FlavorsData with FlavorsDataMappable {
///   final List<String> flavors;
///
///   const FlavorsData({required this.flavors});
/// }
/// ```
const mappableEntity = MappableClass(
  generateMethods:
      GenerateMethods.copy | GenerateMethods.equals | GenerateMethods.stringify,
);

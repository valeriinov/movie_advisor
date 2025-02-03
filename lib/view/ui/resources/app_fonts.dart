/// {@category Resources}
///
/// The [AppFonts] class provides a centralized and type-safe way to access
/// custom font families used in the application. This approach ensures consistency
/// across the UI and prevents hardcoded font names throughout the codebase.
///
/// Example:
/// ```dart
/// TextStyle labelLarge(Color color) => TextStyle(
///         fontFamily: AppFonts.roboto,
///         fontWeight: FontWeight.w500,
///         fontSize: 14,
///         color: color,
///       );
/// ```
abstract class AppFonts {
  AppFonts._();

  static const String roboto = 'Roboto';
}

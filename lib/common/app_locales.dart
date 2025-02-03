import 'dart:ui';

/// {@category Resources}
///
/// The [AppLocales] enum provides a centralized and type-safe way to manage
/// supported locales within the application. This approach ensures consistency
/// in handling localization and simplifies the process of accessing available
/// language options throughout the codebase.
///
/// Example:
/// ```dart
/// Locale enLocale = AppLocales.en.locale;
/// String enLangCode = AppLocales.en.name;
/// ```
enum AppLocales {
  en(Locale('en')),
  uk(Locale('uk'));

  final Locale locale;

  const AppLocales(this.locale);
}
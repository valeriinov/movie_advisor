/// {@category DataSources}
///
/// The [SettingsProvider] interface serves as a data resource for retrieving
/// essential settings required for network requests.
///
/// It provides methods and properties to access data such as the authentication token
/// and the current locale, which are typically included in request headers to ensure
/// secure and localized API communication.
abstract interface class SettingsProvider {
  /// Retrieves the current authentication token.
  ///
  /// This method returns a [Future] containing the authentication token as a [String].
  /// It is typically used for authenticating API requests.
  Future<String> getAuthToken();

  /// Retrieves the current locale.
  ///
  /// This property returns the current locale as a [String] in the format `en`.
  /// It is typically used for for localizing API responses and ensuring the correct context
  /// for user interaction.
  String get currentLocale;
}

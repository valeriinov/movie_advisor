/// {@category Utils}
///
/// The [EnvProvider] interface defines a contract for managing and accessing
/// environment-specific configurations within the application. It facilitates
/// dynamic configuration loading and retrieval of environment variables.
///
/// Example:
/// ```dart
/// final envProvider = MyEnvProvider();
/// await envProvider.init('.env');
///
/// print('Base URL: ${envProvider.baseUrl}');
/// ```
abstract interface class EnvProvider {
  /// The base URL for network requests,
  /// typically defined in the environment configuration.
  String get baseUrl;

  /// The image URL for loading images from the network,
  /// typically defined in the environment configuration.
  String get imageUrl;

  /// The API token for authenticating network requests,
  /// typically defined in the environment configuration.
  String get apiToken;

  /// Initializes the environment provider by loading configuration from the specified file.
  ///
  /// The [envFilePath] is the path to the environment file (e.g., `.env`).
  /// This method should be called before accessing any environment variables.
  Future<void> init(String envFilePath);
}

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../repositories/settings_provider.dart';

/// {@category Utils}
///
/// The [DioBuilder] class simplifies the configuration and creation of Dio
/// instances for performing HTTP requests. It provides a fluent API for setting
/// base URL, headers, and interceptors while ensuring reusability and consistency
/// across network operations.
///
/// This class integrates with a [SettingsProvider] to dynamically include
/// authentication tokens and localization headers, supporting advanced use cases
/// such as multilingual applications and secured endpoints.
///
/// Example:
///
/// ```dart
/// final dio = DioBuilder(settingsProvider: settingsProvider)
///   .baseUrl('https://api.example.com')
///   .headers()
///   .logger()
///   .build();
/// ```
class DioBuilder {
  static const String _authHeader = 'Authorization';
  static const String _contentTypeHeader = 'Content-Type';
  static const String _acceptHeader = 'Accept';
  static const String _jsonType = 'application/json';
  static const String _bearer = 'Bearer';
  static const String _languageParam = 'language';

  Dio? _dio;
  final SettingsProvider _settingsProvider;
  final List<Interceptor> _interceptors;

  /// Creates an instance of [DioBuilder].
  ///
  /// The [settingsProvider] is used to fetch tokens and locale information for headers.
  /// The [interceptors] parameter allows adding custom interceptors to the Dio instance.
  DioBuilder(
      {required SettingsProvider settingsProvider,
      List<Interceptor> interceptors = const []})
      : _settingsProvider = settingsProvider,
        _interceptors = interceptors;

  Dio get _currentDio => _dio ??= Dio();

  /// Sets the base URL for the Dio instance.
  ///
  /// The [baseUrl] parameter specifies the base URL for all HTTP requests.
  DioBuilder baseUrl(String baseUrl) {
    _currentDio.options.baseUrl = baseUrl;
    return this;
  }

  /// Configures common headers and adds an interceptor for dynamic headers.
  ///
  /// Includes `Content-Type`, `Accept`, and dynamically sets
  /// `Authorization` header based on the current settings.
  DioBuilder headers() {
    _currentDio.options.headers = {
      _contentTypeHeader: _jsonType,
      _acceptHeader: _jsonType,
    };
    _currentDio.interceptors.add(_createHeadersInterceptor());
    return this;
  }

  /// Adds a language interceptor to the Dio instance.
  ///
  /// The interceptor dynamically sets the `language` query parameter
  /// based on the current locale from the settings provider.
  DioBuilder language() {
    _currentDio.interceptors.add(_createLanguageInterceptor());
    return this;
  }

  /// Adds a logger interceptor to the Dio instance.
  ///
  /// The logger outputs detailed request and response information,
  /// including headers and body content, for debugging purposes.
  DioBuilder logger() {
    _currentDio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
    ));
    return this;
  }

  /// Builds and returns a configured Dio instance.
  ///
  /// Applies all interceptors and resets the internal Dio instance for reuse.
  Dio build() {
    _currentDio.interceptors.addAll(_interceptors);

    final builtDio = _currentDio;

    _resetDio();

    return builtDio;
  }

  void _resetDio() {
    _dio = null;
  }

  InterceptorsWrapper _createHeadersInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await _settingsProvider.getAuthToken();

        if (token.isNotEmpty) {
          options.headers[_authHeader] = '$_bearer $token';
        }

        return handler.next(options);
      },
    );
  }

  InterceptorsWrapper _createLanguageInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        final locale = _settingsProvider.currentLocale;
        options.queryParameters[_languageParam] = locale;
        return handler.next(options);
      },
    );
  }
}

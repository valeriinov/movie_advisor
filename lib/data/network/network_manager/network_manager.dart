import 'net_req_options.dart';
import 'net_error.dart';
import 'net_response.dart';

/// {@category Utils}
///
/// The [NetworkManager] interface provides an abstraction layer for performing
/// HTTP requests. It defines methods for standard HTTP operations such as `GET`,
/// `POST`, `PUT`, and `DELETE`, allowing customizable options and typed responses.
///
/// This interface ensures consistency and flexibility in implementing network
/// operations while supporting advanced configuration through [NetReqOptions].
///
/// Example:
///
/// ```dart
/// final networkManager = MyNetworkManager();
///
/// try {
///   final response = await networkManager.get<String>('/api/resource');
///   print('Response data: ${response.data}');
/// } catch (e) {
///   if (e is NetError) {
///     print('Network error: ${e.message}');
///   } else {
///     print('Unknown error: $e');
///   }
/// }
/// ```
abstract interface class NetworkManager {
  /// Performs an HTTP `GET` request.
  ///
  /// The [path] parameter is the endpoint path relative to the base URL.
  /// The [queryParameters] parameter is an optional map of query parameters to append to the URL.
  /// The [options] parameter is an optional [NetReqOptions] object for customizing the request.
  ///
  /// Returns a [NetResponse] or throws a [NetError] if the request fails.
  Future<NetResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  });

  /// Performs an HTTP `POST` request.
  ///
  /// The [path] parameter is the endpoint path relative to the base URL.
  /// The [data] parameter is the optional request body, typically used for sending JSON or form data.
  /// The [queryParameters] parameter is an optional map of query parameters to append to the URL.
  /// The [options] parameter is an optional [NetReqOptions] object for customizing the request.
  ///
  /// Returns a [NetResponse] or throws a [NetError] if the request fails.
  Future<NetResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  });

  /// Performs an HTTP `PUT` request.
  ///
  /// The [path] parameter is the endpoint path relative to the base URL.
  /// The [data] parameter is the optional request body, typically used for sending JSON or form data.
  /// The [queryParameters] parameter is an optional map of query parameters to append to the URL.
  /// The [options] parameter is an optional [NetReqOptions] object for customizing the request.
  ///
  /// Returns a [NetResponse] or throws a [NetError] if the request fails.
  Future<NetResponse<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  });

  /// Performs an HTTP `DELETE` request.
  ///
  /// The [path] parameter is the endpoint path relative to the base URL.
  /// The [data] parameter is the optional request body, typically used for sending additional parameters.
  /// The [queryParameters] parameter is an optional map of query parameters to append to the URL.
  /// The [options] parameter is an optional [NetReqOptions] object for customizing the request.
  ///
  /// Returns a [NetResponse] or throws a [NetError] if the request fails.
  Future<NetResponse<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    NetReqOptions? options,
  });
}

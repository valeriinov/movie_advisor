/// The [NetReqOptions] class provides a way to configure
/// options for network requests, such as request timeout and custom headers.
class NetReqOptions {
  /// Optional. Specifies the maximum duration to wait for a network request to complete.
  /// If not provided, the request will use the default timeout set by the network client.
  final Duration? timeout;

  /// Optional. A map of key-value pairs representing HTTP headers to include in the request.
  /// Commonly used for specifying content types, authorization tokens, etc.
  final Map<String, dynamic>? headers;

  const NetReqOptions({this.timeout, this.headers});
}

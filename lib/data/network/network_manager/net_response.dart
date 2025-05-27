/// The [NetResponse] class represents the result of a network request,
/// including the response data, status code, and an optional message.
class NetResponse<T> {
  /// The response data.
  /// This can be null if the request fails
  /// or if there is no data in the response.
  final T? data;

  /// The HTTP status code of the response.
  /// This can be null if the request fails without receiving a response.
  final int? statusCode;

  /// An optional message providing additional details about the response.
  /// This is often used for error messages or server-provided information.
  final String? message;

  const NetResponse({this.data, this.statusCode, this.message});
}

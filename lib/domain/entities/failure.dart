/// {@category Entities}
///
/// The [Failure] class represents a high-level, user-facing error state
/// used in the `Domain` and `Presentation` layers. It abstracts technical
/// exceptions into meaningful messages that can be handled gracefully
/// within the application flow.
///
/// This class typically wraps error details in a simple [message] format,
/// making it suitable for UI feedback and user notifications.
class Failure {
  /// A descriptive message providing details about the failure.
  final String message;

  const Failure({required this.message});
}

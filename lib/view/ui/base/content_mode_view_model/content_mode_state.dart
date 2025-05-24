import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import 'content_mode.dart';
import '../../base/view_model/base_state.dart';

part 'content_mode_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [ContentModeState].
/// Manages the current status for reactive updates.
@mappableEntity
final class ContentModeState extends BaseState<ContentModeStatus>
    with ContentModeStateMappable {
  final ContentMode mode;

  @override
  final ContentModeStatus status;

  const ContentModeState({
    this.mode = ContentMode.movies,
    this.status = const ContentModeBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [ContentModeState].
/// Provides properties for loading, initialization, and error handling.
class ContentModeStatus extends BaseStatus {
  const ContentModeStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [ContentModeStatus].
@mappableEntity
final class ContentModeBaseStatus extends ContentModeStatus
    with ContentModeBaseStatusMappable {
  const ContentModeBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

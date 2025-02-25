import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/auth/user_data.dart';
import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'more_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [MoreStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class MoreState extends BaseState<MoreStatus> with MoreStateMappable {
  final UserData? user;

  @override
  final MoreStatus status;

  const MoreState({this.user, this.status = const MoreBaseStatus()});
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [MoreState].
/// Provides properties for loading, initialization, and error handling.
sealed class MoreStatus extends BaseStatus {
  const MoreStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [MoreState].
/// Used before it has completed its setup.
@mappableEntity
final class MoreBaseStatus extends MoreStatus with MoreBaseStatusMappable {
  const MoreBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [MoreState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class MoreBaseInitStatus extends MoreStatus
    with MoreBaseInitStatusMappable {
  const MoreBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

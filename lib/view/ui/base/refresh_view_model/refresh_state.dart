import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../base/view_model/base_state.dart';

part 'refresh_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [RefreshState].
/// Manages the current status for reactive updates.
@mappableEntity
final class RefreshState extends BaseState<RefreshStatus>
    with RefreshStateMappable {
  @override
  final RefreshStatus status;

  const RefreshState({this.status = const RefreshBaseStatus()});
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [RefreshState].
/// Provides properties for loading, initialization, and error handling.
class RefreshStatus extends BaseStatus {
  const RefreshStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [RefreshStatus].
@mappableEntity
final class RefreshBaseStatus extends RefreshStatus
    with RefreshBaseStatusMappable {
  const RefreshBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class LangUpdatedStatus extends RefreshStatus
    with LangUpdatedStatusMappable {
  const LangUpdatedStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

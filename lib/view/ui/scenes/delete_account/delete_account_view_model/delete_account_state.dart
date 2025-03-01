import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'delete_account_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [DeleteAccountStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class DeleteAccountState extends BaseState<DeleteAccountStatus>
    with DeleteAccountStateMappable {
  @override
  final DeleteAccountStatus status;

  const DeleteAccountState({this.status = const DeleteAccountBaseStatus()});
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [DeleteAccountState].
/// Provides properties for loading, initialization, and error handling.
sealed class DeleteAccountStatus extends BaseStatus {
  const DeleteAccountStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [DeleteAccountState].
/// Used before it has completed its setup.
@mappableEntity
final class DeleteAccountBaseStatus extends DeleteAccountStatus
    with DeleteAccountBaseStatusMappable {
  const DeleteAccountBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [DeleteAccountState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class DeleteAccountBaseInitStatus extends DeleteAccountStatus
    with DeleteAccountBaseInitStatusMappable {
  const DeleteAccountBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

@mappableEntity
final class AccountDeletedStatus extends DeleteAccountStatus
    with AccountDeletedStatusMappable {
  const AccountDeletedStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'settings_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [SettingsStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class SettingsState extends BaseState<SettingsStatus> with SettingsStateMappable {
  @override
  final SettingsStatus status;

  const SettingsState({
    this.status = const SettingsBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [SettingsState].
/// Provides properties for loading, initialization, and error handling.
sealed class SettingsStatus extends BaseStatus {
const SettingsStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [SettingsState].
/// Used before it has completed its setup.
@mappableEntity
final class SettingsBaseStatus extends SettingsStatus
with SettingsBaseStatusMappable {
const SettingsBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [SettingsState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class SettingsBaseInitStatus extends SettingsStatus
with SettingsBaseInitStatusMappable {
const SettingsBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}

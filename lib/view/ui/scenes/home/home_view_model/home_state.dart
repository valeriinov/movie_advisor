import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'home_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeState extends BaseState<HomeStatus> with HomeStateMappable {
  @override
  final HomeStatus status;

  const HomeState({
    this.status = const HomeBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeStatus extends BaseStatus {
const HomeStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeBaseStatus extends HomeStatus
with HomeBaseStatusMappable {
const HomeBaseStatus(
{super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeBaseInitStatus extends HomeStatus
with HomeBaseInitStatusMappable {
const HomeBaseInitStatus(
{super.isLoading, super.errorMessage, super.isInitialized = true});
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';
import '../../../base/content_mode.dart';

part 'home_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeState extends BaseState<HomeStatus> with HomeStateMappable {
  final ContentMode contentMode;

  @override
  final HomeStatus status;

  const HomeState({
    this.contentMode = ContentMode.movies,
    this.status = const HomeBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeStatus extends BaseStatus {
  const HomeStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeState].
@mappableEntity
final class HomeBaseStatus extends HomeStatus with HomeBaseStatusMappable {
  const HomeBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/mappable_entity.dart';
import '../../../base/view_model/base_state.dart';

part 'details_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [DetailsStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class DetailsState<T extends MediaData> extends BaseState<DetailsStatus>
    with DetailsStateMappable<T> {
  final T data;

  @override
  final DetailsStatus status;

  const DetailsState({
    required this.data,
    this.status = const DetailsBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [DetailsState].
/// Provides properties for loading, initialization, and error handling.
sealed class DetailsStatus extends BaseStatus {
  const DetailsStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [DetailsState].
/// Used before it has completed its setup.
@mappableEntity
final class DetailsBaseStatus extends DetailsStatus
    with DetailsBaseStatusMappable {
  const DetailsBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [DetailsState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class DetailsBaseInitStatus extends DetailsStatus
    with DetailsBaseInitStatusMappable {
  const DetailsBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

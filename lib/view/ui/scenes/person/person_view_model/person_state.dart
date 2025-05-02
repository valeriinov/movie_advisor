import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/person/person_data.dart';
import '../../../base/view_model/base_state.dart';
import '../model/person_tab.dart';

part 'person_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [PersonStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class PersonState extends BaseState<PersonStatus>
    with PersonStateMappable {
  final PersonData person;
  final PersonTab currentTab;

  @override
  final PersonStatus status;

  const PersonState({
    required this.person,
    this.currentTab = PersonTab.biography,
    this.status = const PersonBaseStatus(),
  });
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [PersonState].
/// Provides properties for loading, initialization, and error handling.
sealed class PersonStatus extends BaseStatus {
  const PersonStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [PersonState].
/// Used before it has completed its setup.
@mappableEntity
final class PersonBaseStatus extends PersonStatus
    with PersonBaseStatusMappable {
  const PersonBaseStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized,
  });
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [PersonState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class PersonBaseInitStatus extends PersonStatus
    with PersonBaseInitStatusMappable {
  const PersonBaseInitStatus({
    super.isLoading,
    super.errorMessage,
    super.isInitialized = true,
  });
}

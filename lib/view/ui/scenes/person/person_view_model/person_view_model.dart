import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/person/person_data.dart';
import '../../../../../domain/entities/result.dart';
import '../../../../../domain/usecases/person_use_case.dart';
import '../../../../di/injector.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../model/person_tab.dart';
import 'person_state.dart';

/// {@category StateManagement}
///
/// A type alias for [AFSP] with [DetailsViewModel], [DetailsState], and an integer ID.
typedef PersonAFSP = AFSP<PersonViewModel, PersonState, int>;

/// {@category StateManagement}
///
/// A provider for the [PersonViewModel] class.
final personViewModelPr =
    AutoDisposeNotifierProvider.family<PersonViewModel, PersonState, int>(
      PersonViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `person`-specific logic and state.
///
/// This class is responsible for coordinating `person` behavior and interacting with the UI.
class PersonViewModel extends AutoDisposeFamilyNotifier<PersonState, int>
    with SafeOperationsMixin, ScheduleOperationsMixin {
  late final PersonUseCase _personUseCase;

  @override
  PersonState build(arg) {
    _personUseCase = ref.read(personUseCasePr);

    ref.onDispose(cancelSafeOperations);
    scheduleCall(loadInitialData);

    return PersonState(person: PersonData(id: arg));
  }

  Future<void> loadInitialData({bool showLoader = true}) async {
    _updateStatus(PersonBaseStatus(isLoading: showLoader));

    await safeCall(
      () => _personUseCase.getPerson(state.person.id),
      onResult: _handlePersonResult,
    );
  }

  void _handlePersonResult(Result<PersonData>? result) {
    result?.fold(
      (error) {
        _updateStatus(PersonBaseInitStatus(errorMessage: error.message));
      },
      (person) {
        state = state.copyWith(status: PersonBaseInitStatus(), person: person);
      },
    );
  }

  void updateCurrentTab(PersonTab tab) {
    if (tab == state.currentTab) return;

    state = state.copyWith(currentTab: tab);
  }

  void _updateStatus(PersonStatus status) {
    state = state.copyWith(status: status);
  }
}

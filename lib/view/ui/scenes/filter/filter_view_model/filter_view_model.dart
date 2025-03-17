
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'filter_state.dart';

/// {@category StateManagement}
///
/// A provider for the [FilterViewModel] class.
final filterViewModelPr =
    AutoDisposeNotifierProvider<FilterViewModel, FilterState>(FilterViewModel.new);

/// {@category StateManagement}
///
/// A view model for managing `filter`-specific logic and state.
///
/// This class is responsible for coordinating `filter` behavior and interacting with the UI.
class FilterViewModel extends AutoDisposeNotifier<FilterState> {
  // TODO: Inject use case.
  // late final FilterUseCase _filterUseCase;

  @override
  FilterState build() {
    // TODO: Inject use case.
    // _filterUseCase = ref.read(filterUseCasePr);

    return const FilterState();
  }

  void _updateStatus(FilterStatus status) {
    state = state.copyWith(status: status);
  }
}


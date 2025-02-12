import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/ext/vm_state_provider_creator.dart';
import 'filter_state.dart';

typedef FilterVSP = ASP<FilterViewModel, FilterState>;

class FilterViewModel extends AutoDisposeNotifier<FilterState> {
  @override
  FilterState build() => const FilterState();

  void updateSearchQuery(String? query) {
    final updFilter = state.filter.copyWith(query: query);

    state = state.copyWith(filter: updFilter);
  }
}

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/ext/vm_state_provider_creator.dart';
import 'refresh_state.dart';

/// {@category StateManagement}
///
/// A type alias for [VSP] with [RefreshViewModel] and [RefreshState].
typedef RefreshVSP = VSP<RefreshViewModel, RefreshState>;

/// {@category StateManagement}
///
/// A provider for the [RefreshViewModel] class.
final refreshViewModelPr =
    NotifierProvider<RefreshViewModel, RefreshState>(
      RefreshViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing the [RefreshState].
class RefreshViewModel extends Notifier<RefreshState> {
  @override
  RefreshState build() => const RefreshState();

  void setLangUpdatedStatus() {
    state = state.copyWith(status: const RefreshBaseStatus());
    state = state.copyWith(status: const LangUpdatedStatus());
  }
}

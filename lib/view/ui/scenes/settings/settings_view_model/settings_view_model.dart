import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'settings_state.dart';

/// {@category StateManagement}
///
/// A provider for the [SettingsViewModel] class.
final settingsViewModelPr =
    AutoDisposeNotifierProvider<SettingsViewModel, SettingsState>(
      SettingsViewModel.new,
    );

/// {@category StateManagement}
///
/// A view model for managing `settings`-specific logic and state.
///
/// This class is responsible for coordinating `settings` behavior and interacting with the UI.
class SettingsViewModel extends AutoDisposeNotifier<SettingsState> {
  // TODO: Inject use case.
  // late final SettingsUseCase _settingsUseCase;

  @override
  SettingsState build() {
    // TODO: Inject use case.
    // _settingsUseCase = ref.read(settingsUseCasePr);

    return const SettingsState();
  }
}

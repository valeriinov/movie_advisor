import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'vm_state_handler_mixin.dart';
import 'vm_state_provider_creator.dart';
import '../base_state.dart';

/// {@category StateManagement}
///
/// Implementation of [ViewModelStateProvider] for auto-disposable state management.
///
/// [VMAutoDisposeStateProvider] wraps an [AutoDisposeNotifierProvider] to
/// provide access to the view model and its state.
final class VMAutoDisposeStateProvider<
  N extends AutoDisposeNotifier<S>,
  S extends BaseState
>
    extends ViewModelStateProvider<N, S, AutoDisposeNotifierProvider<N, S>>
    with VMStateHandlerMixin {
  VMAutoDisposeStateProvider({required super.ref, required super.provider});

  @override
  N get viewModel => ref.read(provider.notifier);
}

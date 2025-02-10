import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'vm_state_handler_mixin.dart';
import 'vm_state_provider_creator.dart';
import '../base_state.dart';

/// {@category StateManagement}
///
/// Implementation of [ViewModelStateProvider] for managing state at a global level.
///
/// [VMRegularStateProvider] wraps an [NotifierProvider] to
/// provide access to the view model and its state.
final class VMRegularStateProvider<N extends Notifier<S>, S extends BaseState>
    extends ViewModelStateProvider<N, S, NotifierProvider<N, S>>
    with VMStateHandlerMixin {
  VMRegularStateProvider({required super.ref, required super.provider});

  @override
  N get viewModel => ref.read(provider.notifier);
}

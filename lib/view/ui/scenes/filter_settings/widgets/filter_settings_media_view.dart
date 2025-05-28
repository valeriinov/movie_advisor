import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_short_data.dart';
import '../../../../../domain/entities/filter/filter_data.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../base/view_model/ext/state_comparator.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../widgets/dialogs/exit_dialog.dart';
import '../../filter/filter_view_model/filter_view_model.dart';
import '../filter_settings_view_model/filter_settings_state.dart';
import '../filter_settings_view_model/filter_settings_view_model.dart';
import 'filter_settings_app_bar.dart';

class FilterSettingsMediaView<T extends MediaShortData, F extends FilterData, G>
    extends HookConsumerWidget {
  final FilterSettingsVMProvider<F, G> filterSettingsProvider;
  final FilterVMProvider<T, F, G> filterProvider;
  final ContentMode contentMode;

  const FilterSettingsMediaView({
    super.key,
    required this.filterSettingsProvider,
    required this.filterProvider,
    required this.contentMode,
  });

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(filterSettingsProvider);
    final vspFilter = ref.vspFromADProvider(filterProvider);

    useEffect(() {
      _scheduleInitFilter(context, vspFilter, vsp);
      return null;
    }, []);

    vsp.handleState(
      listener: (prev, next) => _handleState(prev, next, context, vspFilter),
    );

    final hasUnsavedChanges = vsp.selectWatch((s) => s.isFilterChanged);

    return Scaffold(
      appBar: FilterSettingsAppBar(
        onReset: hasUnsavedChanges ? vsp.viewModel.resetFilter : null,
        onSave: hasUnsavedChanges ? vsp.viewModel.setApplyStatus : null,
      ),
      body: PopScope(
        onPopInvokedWithResult: (didPop, _) {
          if (didPop) return;
          _showExitDialog(context);
        },
        canPop: !hasUnsavedChanges,
        child: Center(child: Text('FilterSettings Screen')),
      ),
    );
  }

  void _scheduleInitFilter(
    BuildContext context,
    FilterVSP vspFilter,
    FilterSettingsVSP vsp,
  ) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;
      final initFilter = vspFilter.selectRead((s) => s.filter);
      vsp.viewModel.init(initFilter: initFilter);
    });
  }

  void _handleState(
    FilterSettingsState<F>? prev,
    FilterSettingsState<F> next,
    BuildContext context,
    FilterVSP vspFilter,
  ) {
    if (!next.isUpdate(prev, (s) => s?.status)) return;

    if (next.status is ApplyFilterSettingsStatus) {
      final filter = next.filter;
      vspFilter.viewModel.updateFilter(filter);

      context.pop();
    }
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => ExitDialog(onConfirm: context.pop),
    );
  }
}

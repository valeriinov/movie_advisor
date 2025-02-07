import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../di/injector.dart';
import '../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../widgets/home_shared/home_content_skeleton.dart';
import '../../widgets/home_shared/suggestions_container.dart';
import 'home_series_view_model/home_series_view_model.dart';

class HomeSeriesView extends ConsumerWidget {
  const HomeSeriesView({super.key});

  @override
  Widget build(context, ref) {
    final vsp = ref.vspFromADProvider(homeSeriesViewModelPr);

    vsp.handleState(listener: (prev, next) {
      ref.baseStatusHandler.handleStatus(prev, next);
    });

    final suggestionsContent =
        vsp.selectWatch((s) => s.suggestedSeries.mediaData.items);

    return vsp.isLoading && !vsp.isInitialized
        ? HomeContentSkeleton()
        : MultiSliver(
            children: [
              SuggestionsContainer(
                suggestions: suggestionsContent,
                onTap: (id) {}, // TODO: Go to series details
              ),
            ],
          );
  }
}

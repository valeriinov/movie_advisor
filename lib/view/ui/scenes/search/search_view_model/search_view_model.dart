import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/movie/movie_short_data.dart';
import '../../../../../domain/entities/series/series_short_data.dart';
import '../../../base/content_mode.dart';
import '../../../base/view_model/ext/vm_state_provider_creator.dart';
import '../../../base/view_model/utils/safe_operations_mixin.dart';
import '../../../base/view_model/utils/schedule_operation_mixin.dart';
import '../../../widgets/content_mode_view_model/content_mode_state.dart';
import '../../../widgets/content_mode_view_model/content_mode_view_model.dart';
import 'search_state.dart';

part 'search_movies_view_model.dart';

part 'search_series_view_model.dart';

final searchContModeViewModelPr = AutoDisposeNotifierProvider.family<
    ContentModeViewModel, ContentModeState, ContentMode>(
  ContentModeViewModel.new,
);

abstract base class _SearchViewModel<T>
    extends AutoDisposeNotifier<SearchState<T>>
    with SafeOperationsMixin, ScheduleOperationsMixin {}

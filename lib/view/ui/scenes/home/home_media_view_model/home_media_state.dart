import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../base/view_model/base_state.dart';
import '../model/media_load_info.dart';
import '../model/media_tab.dart';

part 'home_media_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeMediaStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeMediaState<T> extends BaseState<HomeMediaStatus>
    with HomeMediaStateMappable<T> {
  final MediaTab currentTab;

  final MediaLoadInfo<T> sugCont;
  final MediaLoadInfo<T> tabCont;

  @override
  final HomeMediaStatus status;

  HomeMediaState({
    this.currentTab = MediaTab.nowPlaying,
    MediaLoadInfo<T>? sugCont,
    MediaLoadInfo<T>? tabCont,
    this.status = const HomeMediaBaseStatus(),
  })  : sugCont = sugCont ?? MediaLoadInfo<T>(),
        tabCont = tabCont ?? MediaLoadInfo<T>();

  HomeMediaState<T> copyWithUpdSugCont({
    HomeMediaStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    ListWithPaginationData<T>? data,
  }) {
    final updatedData = sugCont.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      sugCont: updatedData,
    );
  }

  HomeMediaState<T> copyWithUpdTabCont({
    HomeMediaStatus? status,
    bool? isInitialized,
    bool isNextPageLoading = false,
    bool isNewPageLoaded = false,
    ListWithPaginationData<T>? data,
  }) {
    final updatedData = tabCont.copyWithHandledData(
      isInitialized: isInitialized,
      isNextPageLoading: isNextPageLoading,
      isNewPageLoaded: isNewPageLoaded,
      data: data,
    );

    return copyWith(
      status: status ?? this.status,
      tabCont: updatedData,
    );
  }
}

/// {@category StateManagement}
///
/// A sealed class representing the possible statuses of a [HomeMediaState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeMediaStatus extends BaseStatus {
  const HomeMediaStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeMediaState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeMediaBaseStatus extends HomeMediaStatus
    with HomeMediaBaseStatusMappable {
  const HomeMediaBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeMediaState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeMediaBaseInitStatus extends HomeMediaStatus
    with HomeMediaBaseInitStatusMappable {
  const HomeMediaBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

import 'package:dart_mappable/dart_mappable.dart';

import '../../../../../domain/entities/mappable_entity.dart';
import '../../../../../domain/entities/pagination/list_with_pagination_data.dart';
import '../../../base/media_load_info.dart';
import '../../../base/view_model/base_state.dart';
import '../model/media_tab.dart';

part 'home_state.mapper.dart';

/// {@category StateManagement}
///
/// Represents the state of a view model, extending [BaseState] with a [HomeStatus].
/// Manages the current status for reactive updates.
@mappableEntity
final class HomeState<T> extends BaseState<HomeStatus>
    with HomeStateMappable<T> {
  final MediaTab currentTab;

  final MediaLoadInfo<T> sugCont;
  final MediaLoadInfo<T> tabCont;

  @override
  final HomeStatus status;

  HomeState({
    this.currentTab = MediaTab.nowPlaying,
    MediaLoadInfo<T>? sugCont,
    MediaLoadInfo<T>? tabCont,
    this.status = const HomeBaseStatus(),
  })  : sugCont = sugCont ?? MediaLoadInfo<T>(),
        tabCont = tabCont ?? MediaLoadInfo<T>();

  HomeState<T> copyWithUpdSugCont({
    HomeStatus? status,
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

  HomeState<T> copyWithUpdTabCont({
    HomeStatus? status,
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
/// A sealed class representing the possible statuses of a [HomeState].
/// Provides properties for loading, initialization, and error handling.
sealed class HomeStatus extends BaseStatus {
  const HomeStatus({super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the initial or uninitialized status of a [HomeState].
/// Used before it has completed its setup.
@mappableEntity
final class HomeBaseStatus extends HomeStatus with HomeBaseStatusMappable {
  const HomeBaseStatus(
      {super.isLoading, super.errorMessage, super.isInitialized});
}

/// {@category StateManagement}
///
/// Represents the neutral or idle status of a [HomeState] after it has completed its initial setup.
/// Indicates that it is ready for interaction with [isInitialized] set to `true`.
@mappableEntity
final class HomeBaseInitStatus extends HomeStatus
    with HomeBaseInitStatusMappable {
  const HomeBaseInitStatus(
      {super.isLoading, super.errorMessage, super.isInitialized = true});
}

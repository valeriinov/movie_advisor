import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/adapters/url_launcher_adapter/impl_url_launcher_adapter.dart';
import '../../common/adapters/url_launcher_adapter/url_launcher_adapter.dart';
import '../../data/local/app_local_database.dart';
import '../../data/mappers/app_auth_mapper.dart';
import '../../data/mappers/app_cast_mapper.dart';
import '../../data/mappers/app_filter_mapper.dart';
import '../../data/mappers/app_mapper.dart';
import '../../data/mappers/app_movies_mapper.dart';
import '../../data/mappers/app_rating_mapper.dart';
import '../../data/mappers/app_search_mapper.dart';
import '../../data/mappers/app_series_mapper.dart';
import '../../data/mappers/app_video_mapper.dart';
import '../../data/network/env_provider/env_provider.dart';
import '../../data/network/network_manager/impl_dio/dio_builder.dart';
import '../../data/network/network_manager/impl_dio/dio_error_handler.dart';
import '../../data/network/network_manager/impl_dio/impl_network_manager.dart';
import '../../data/network/network_manager/network_manager.dart';
import '../../data/network/services/auth_service.dart';
import '../../data/network/services/connectivity_service.dart';
import '../../data/network/services/details_service.dart';
import '../../data/network/services/filter_service.dart';
import '../../data/network/services/home_service.dart';
import '../../data/network/services/media_service.dart';
import '../../data/network/services/search_service.dart';
import '../../data/network/services/watch_service.dart';
import '../../data/network/utils/image_url_handler/image_url_handler.dart';
import '../../data/network/utils/image_url_handler/impl_image_url_handler.dart';
import '../../data/network/utils/media_response_handler/impl_media_response_handler.dart';
import '../../data/network/utils/media_response_handler/media_response_handler.dart';
import '../../data/repositories/auth/auth_local_data_source.dart';
import '../../data/repositories/auth/auth_remote_data_source.dart';
import '../../data/repositories/auth/impl_auth_repository.dart';
import '../../data/repositories/details/details_remote_data_source.dart';
import '../../data/repositories/details/impl_details_repository.dart';
import '../../data/repositories/filter/filter_local_data_source.dart';
import '../../data/repositories/filter/filter_remote_data_source.dart';
import '../../data/repositories/filter/impl_filter_repository.dart';
import '../../data/repositories/home/home_remote_data_source.dart';
import '../../data/repositories/home/impl_home_repository.dart';
import '../../data/repositories/media_local_data_source.dart';
import '../../data/repositories/refresh/impl_refresh_repository.dart';
import '../../data/repositories/refresh/refresh_local_data_source.dart';
import '../../data/repositories/search/impl_search_repository.dart';
import '../../data/repositories/search/search_remote_data_source.dart';
import '../../data/repositories/settings/impl_settings_repository.dart';
import '../../data/repositories/settings/settings_local_data_source.dart';
import '../../data/repositories/settings_provider.dart';
import '../../data/repositories/sync/impl_sync_repository.dart';
import '../../data/repositories/sync/sync_data_source.dart';
import '../../data/repositories/watch/impl_watch_repository.dart';
import '../../data/repositories/watch/watch_local_data_source.dart';
import '../../data/repositories/watch/watch_remote_data_source.dart';
import '../../data/sources/impl_auth_local_data_source.dart';
import '../../data/sources/impl_auth_remote_data_source.dart';
import '../../data/sources/impl_details_remote_data_source.dart';
import '../../data/sources/impl_filter_local_data_source.dart';
import '../../data/sources/impl_filter_remote_data_source.dart';
import '../../data/sources/impl_home_remote_data_source.dart';
import '../../data/sources/impl_media_local_data_source.dart';
import '../../data/sources/impl_refresh_local_data_source.dart';
import '../../data/sources/impl_search_remote_data_source.dart';
import '../../data/sources/impl_settings_local_data_source.dart';
import '../../data/sources/impl_settings_provider.dart';
import '../../data/sources/impl_sync_data_source.dart';
import '../../data/sources/impl_watch_local_data_source.dart';
import '../../data/sources/impl_watch_remote_data_source.dart';
import '../../data/utils/media_merger/impl_media_merger.dart';
import '../../data/utils/media_merger/media_merger.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/details_repository.dart';
import '../../domain/repositories/filter_repository.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/repositories/refresh_repository.dart';
import '../../domain/repositories/search_repository.dart';
import '../../domain/repositories/settings_repository.dart';
import '../../domain/repositories/sync_repository.dart';
import '../../domain/repositories/watch_repository.dart';
import '../../domain/usecases/auth_use_case.dart';
import '../../domain/usecases/details/details_movie_use_case.dart';
import '../../domain/usecases/details/details_series_use_case.dart';
import '../../domain/usecases/filter/filter_movies_use_case.dart';
import '../../domain/usecases/filter/filter_series_use_case.dart';
import '../../domain/usecases/home/home_movies_use_case.dart';
import '../../domain/usecases/home/home_series_use_case.dart';
import '../../domain/usecases/refresh_use_case.dart';
import '../../domain/usecases/search/search_movies_use_case.dart';
import '../../domain/usecases/search/search_series_use_case.dart';
import '../../domain/usecases/settings_use_case.dart';
import '../../domain/usecases/sync_use_case.dart';
import '../../domain/usecases/watch/watch_movie_use_case.dart';
import '../../domain/usecases/watch/watch_series_use_case.dart';
import '../ui/base/view_model/base_status_handler.dart';
import '../ui/impl_base_status_handler.dart';
import '../ui/navigation/app_router.dart';
import '../ui/navigation/impl_app_router.dart';
import '../ui/resources/app_theme.dart';
import '../ui/widgets/dialogs/loading_dialog/loading_dialog_manager.dart';
import '../ui/widgets/dialogs/toasts/toast_manager.dart';

// CORE
final firebaseAuthPr = Provider<FirebaseAuth>((_) => FirebaseAuth.instance);
final firebaseFirestorePr = Provider<FirebaseFirestore>(
  (_) => FirebaseFirestore.instance,
);
final firebaseFunctionsPr = Provider<FirebaseFunctions>(
  (_) => FirebaseFunctions.instance,
);
final appRouterPr = Provider<AppRouter>(
  (ref) => ImplAppRouter(rootNavKey: GlobalKey<NavigatorState>()),
);

final appThemePr = Provider<AppTheme>((_) => AppTheme());

final toastManagerPr = Provider<ToastManager>((ref) {
  final rootNavKey = ref.read(appRouterPr).rootNavKey;

  return ToastManager(rootNavigatorKey: rootNavKey, fToast: FToast());
});

final baseStatusHandlerPr = Provider<BaseStatusHandler>((ref) {
  final rootNavKey = ref.read(appRouterPr).rootNavKey;
  final loadingManager = LoadingDialogManager(rootNavKey: rootNavKey);
  final toastManager = ref.read(toastManagerPr);

  return ImplBaseStatusHandler(
    loadingDialogManager: loadingManager,
    toastManager: toastManager,
  );
});

// Will be initialized in ProviderScope.
final envPr = Provider<EnvProvider>((_) => throw UnimplementedError());

// Will be initialized in ProviderScope.
final settingsPr = Provider<SettingsProvider>(
  (_) => throw UnimplementedError(),
);

final mediaApiClientPr = Provider<NetworkManager>((ref) {
  final dioBuilder = _createDioBuilder(ref, applyLang: false);

  return ImplNetworkManager(
    dio: dioBuilder.build(),
    errorHandler: DioErrorHandler(),
  );
});

final localizedMediaApiClientPr = Provider<NetworkManager>((ref) {
  final dioBuilder = _createDioBuilder(ref);

  return ImplNetworkManager(
    dio: dioBuilder.build(),
    errorHandler: DioErrorHandler(),
  );
});

DioBuilder _createDioBuilder(Ref ref, {bool applyLang = true}) {
  final settingsProvider = ref.read(settingsPr);
  final baseUrl = ref.read(envPr).baseUrl;

  final dioBuilder = DioBuilder(settingsProvider: settingsProvider);

  dioBuilder.baseUrl(baseUrl).headers();

  if (applyLang) dioBuilder.language();

  if (kDebugMode) dioBuilder.logger();

  return dioBuilder;
}

final imageUrlHandlerPr = Provider<ImageUrlHandler>(
  (ref) => ImplImageUrlHandler(envProvider: ref.read(envPr)),
);
final mediaResponseHandlerPr = Provider<MediaResponseHandler>(
  (ref) =>
      ImpMediaResponseHandler(imageUrlHandler: ref.read(imageUrlHandlerPr)),
);

final localDatabasePr = Provider<AppLocalDatabase>((_) => AppLocalDatabase());

final appMapperPr = Provider<AppMapper>((_) => AppMapper());
final castMapperPr = Provider<AppCastMapper>((_) => AppCastMapper());
final videoMapperPr = Provider<AppVideoMapper>((_) => AppVideoMapper());
final ratingMapperPr = Provider<AppRatingMapper>((_) => AppRatingMapper());
final moviesMapperPr = Provider<AppMoviesMapper>(
  (ref) => AppMoviesMapper(
    ratingMapper: ref.read(ratingMapperPr),
    castMapper: ref.read(castMapperPr),
    videoMapper: ref.read(videoMapperPr),
  ),
);
final seriesMapperPr = Provider<AppSeriesMapper>(
  (ref) => AppSeriesMapper(
    ratingMapper: ref.read(ratingMapperPr),
    castMapper: ref.read(castMapperPr),
    videoMapper: ref.read(videoMapperPr),
  ),
);

final mediaMergerPr = Provider<MediaMerger>((_) => ImplMediaMerger());
final mediaLocalDataSourcePr = Provider<MediaLocalDataSource>(
  (ref) => ImplMediaLocalDataSource(
    database: ref.read(localDatabasePr),
    mediaMerger: ref.read(mediaMergerPr),
    settingsProvider: ref.read(settingsPr),
  ),
);

final urlLauncherPr = Provider<UrlLauncherAdapter>(
  (_) => ImplUrlLauncherAdapter(),
);

final connectivityServicePr = Provider<ConnectivityService>(
  (_) => ConnectivityService(connectivity: Connectivity()),
);

final mediaServicePr = Provider<MediaService>(
  (ref) => MediaService(
    firebaseFirestore: ref.read(firebaseFirestorePr),
    firebaseAuth: ref.read(firebaseAuthPr),
  ),
);

final mediaSyncDataSourcePr = Provider<SyncDataSource>(
  (ref) => ImplSyncDataSource(
    localDatabase: ref.read(localDatabasePr),
    remoteMediaService: ref.read(mediaServicePr),
    connectivity: ref.read(connectivityServicePr),
    authService: ref.read(authServicePr),
  ),
);

// HOME
final homeServicePr = Provider<HomeService>(
  (ref) => HomeService(
    mediaApiClient: ref.read(localizedMediaApiClientPr),
    responseHandler: ref.read(mediaResponseHandlerPr),
  ),
);
final homeRemoteDataSourcePr = Provider<HomeRemoteDataSource>(
  (ref) => ImplHomeRemoteDataSource(service: ref.read(homeServicePr)),
);
final homeRepositoryPr = Provider<HomeRepository>(
  (ref) => ImplHomeRepository(
    dataSource: ref.read(homeRemoteDataSourcePr),
    localDataSource: ref.read(mediaLocalDataSourcePr),
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final homeMoviesUseCasePr = Provider<HomeMoviesUseCase>(
  (ref) => HomeMoviesUseCase(repository: ref.read(homeRepositoryPr)),
);
final homeSeriesUseCasePr = Provider<HomeSeriesUseCase>(
  (ref) => HomeSeriesUseCase(repository: ref.read(homeRepositoryPr)),
);

// SEARCH
final searchServicePr = Provider<SearchService>(
  (ref) => SearchService(
    mediaApiClient: ref.read(localizedMediaApiClientPr),
    responseHandler: ref.read(mediaResponseHandlerPr),
  ),
);
final searchRemoteDataSourcePr = Provider<SearchRemoteDataSource>(
  (ref) => ImplSearchRemoteDataSource(service: ref.read(searchServicePr)),
);
final searchMapperPr = Provider<AppSearchMapper>((_) => AppSearchMapper());
final searchRepositoryPr = Provider<SearchRepository>(
  (ref) => ImplSearchRepository(
    dataSource: ref.read(searchRemoteDataSourcePr),
    localDataSource: ref.read(mediaLocalDataSourcePr),
    searchMapper: ref.read(searchMapperPr),
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final searchMoviesUseCasePr = Provider<SearchMoviesUseCase>(
  (ref) => SearchMoviesUseCase(repository: ref.read(searchRepositoryPr)),
);
final searchSeriesUseCasePr = Provider<SearchSeriesUseCase>(
  (ref) => SearchSeriesUseCase(repository: ref.read(searchRepositoryPr)),
);

// DETAILS
final detailsServicePr = Provider<DetailsService>(
  (ref) => DetailsService(
    mediaApiClient: ref.read(localizedMediaApiClientPr),
    imageUrlHandler: ref.read(imageUrlHandlerPr),
  ),
);
final detailsRemoteDataSourcePr = Provider<DetailsRemoteDataSource>(
  (ref) => ImplDetailsRemoteDataSource(service: ref.read(detailsServicePr)),
);
final detailsMapperPr = Provider<AppCastMapper>((_) => AppCastMapper());
final detailsRepositoryPr = Provider<DetailsRepository>(
  (ref) => ImplDetailsRepository(
    dataSource: ref.read(detailsRemoteDataSourcePr),
    localDataSource: ref.read(mediaLocalDataSourcePr),
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final detailsMovieUseCasePr = Provider<DetailsMovieUseCase>(
  (ref) => DetailsMovieUseCase(repository: ref.read(detailsRepositoryPr)),
);
final detailsSeriesUseCasePr = Provider<DetailsSeriesUseCase>(
  (ref) => DetailsSeriesUseCase(repository: ref.read(detailsRepositoryPr)),
);

// WATCH
final watchServicePr = Provider<WatchService>(
  (ref) => WatchService(
    settingsProvider: ref.read(settingsPr),
    mediaApiClient: ref.read(mediaApiClientPr),
    imageUrlHandler: ref.read(imageUrlHandlerPr),
  ),
);
final watchLocalDataSourcePr = Provider<WatchLocalDataSource>(
  (ref) => ImplWatchLocalDataSource(
    database: ref.read(localDatabasePr),
    settingsProvider: ref.read(settingsPr),
  ),
);
final watchRemoteDataSourcePr = Provider<WatchRemoteDataSource>(
  (ref) => ImplWatchRemoteDataSource(
    mediaService: ref.read(mediaServicePr),
    watchService: ref.read(watchServicePr),
  ),
);
final watchRepositoryPr = Provider<WatchRepository>(
  (ref) => ImplWatchRepository(
    localDataSource: ref.read(watchLocalDataSourcePr),
    remoteDataSource: ref.read(watchRemoteDataSourcePr),
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final watchMoviesUseCasePr = Provider<WatchMovieUseCase>(
  (ref) => WatchMovieUseCase(repository: ref.read(watchRepositoryPr)),
);
final watchSeriesUseCasePr = Provider<WatchSeriesUseCase>(
  (ref) => WatchSeriesUseCase(repository: ref.read(watchRepositoryPr)),
);

// AUTH
final authServicePr = Provider<AuthService>(
  (ref) => AuthService(
    firebaseAuth: ref.read(firebaseAuthPr),
    firebaseFunctions: ref.read(firebaseFunctionsPr),
  ),
);
final authRemoteDataSourcePr = Provider<AuthRemoteDataSource>(
  (ref) => ImplAuthRemoteDataSource(service: ref.read(authServicePr)),
);
final authLocalDataSourcePr = Provider<AuthLocalDataSource>(
  (ref) => ImplAuthLocalDataSource(database: ref.read(localDatabasePr)),
);
final authMapperPr = Provider<AppAuthMapper>((_) => AppAuthMapper());
final authRepositoryPr = Provider<AuthRepository>(
  (ref) => ImplAuthRepository(
    remoteDataSource: ref.read(authRemoteDataSourcePr),
    localDataSource: ref.read(authLocalDataSourcePr),
    mapper: ref.read(authMapperPr),
  ),
);
final authUseCasePr = Provider<AuthUseCase>(
  (ref) => AuthUseCase(repository: ref.read(authRepositoryPr)),
);

// SYNC
final syncRepositoryPr = Provider<SyncRepository>(
  (ref) => ImplSyncRepository(
    dataSource: ref.read(mediaSyncDataSourcePr),
    mapper: ref.read(appMapperPr),
  ),
);
final syncUseCasePr = Provider<SyncUseCase>(
  (ref) => SyncUseCase(repository: ref.read(syncRepositoryPr)),
);

// REFRESH
final refreshLocalDataSourcePr = Provider<RefreshLocalDataSource>(
  (ref) => ImplRefreshLocalDataSource(database: ref.read(localDatabasePr)),
);
final refreshRepositoryPr = Provider<RefreshRepository>(
  (ref) => ImplRefreshRepository(
    dataSource: ref.read(refreshLocalDataSourcePr),
    mapper: ref.read(appMapperPr),
  ),
);
final refreshUseCasePr = Provider<RefreshUseCase>(
  (ref) => RefreshUseCase(repository: ref.read(refreshRepositoryPr)),
);

// SETTINGS
final settingsLocalDataSourcePr = Provider<SettingsLocalDataSource>(
  (ref) => ImplSettingsLocalDataSource(database: ref.read(localDatabasePr)),
);
final settingsRepositoryPr = Provider<SettingsRepository>(
  (ref) => ImplSettingsRepository(
    dataSource: ref.read(settingsLocalDataSourcePr),
    mapper: ref.read(appMapperPr),
  ),
);
final settingsUseCasePr = Provider<SettingsUseCase>(
  (ref) => SettingsUseCase(repository: ref.read(settingsRepositoryPr)),
);

// FILTER
final filterServicePr = Provider<FilterService>(
  (ref) => FilterService(
    mediaApiClient: ref.read(localizedMediaApiClientPr),
    responseHandler: ref.read(mediaResponseHandlerPr),
  ),
);
final filterRemoteDataSourcePr = Provider<FilterRemoteDataSource>(
  (ref) => ImplFilterRemoteDataSource(service: ref.read(filterServicePr)),
);
final filterLocalDataSourcePr = Provider<FilterLocalDataSource>(
  (ref) => ImplFilterLocalDataSource(database: ref.read(localDatabasePr)),
);
final filterMapperPr = Provider<AppFilterMapper>((_) => AppFilterMapper());
final filterRepositoryPr = Provider<FilterRepository>(
  (ref) => ImplFilterRepository(
    remoteDataSource: ref.read(filterRemoteDataSourcePr),
    localDataSource: ref.read(filterLocalDataSourcePr),
    mediaLocalDataSource: ref.read(mediaLocalDataSourcePr),
    filterMapper: ref.read(filterMapperPr),
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final filterMoviesUseCasePr = Provider<FilterMoviesUseCase>(
  (ref) => FilterMoviesUseCase(repository: ref.read(filterRepositoryPr)),
);
final filterSeriesUseCasePr = Provider<FilterSeriesUseCase>(
  (ref) => FilterSeriesUseCase(repository: ref.read(filterRepositoryPr)),
);

/// {@category Utils}
///
/// An extension on [WidgetRef] that provides convenient access to core
/// project dependencies, simplifying the retrieval of commonly used services
/// and promoting more readable and maintainable code.
///
/// Example:
/// ```dart
///  final theme = ref.appTheme.theme;
/// ```
extension CoreProvider on WidgetRef {
  /// A theme provider for applying application theme settings.
  ///
  /// Used for retrieving colors, typography, and component styles.
  AppTheme get appTheme => read(appThemePr);

  /// A navigation provider for initializing and managing the application's navigation system.
  ///
  /// Used for handling routing and navigation across the app.
  AppRouter get appRouter => read(appRouterPr);

  /// Provides access to the global status handler.
  ///
  /// Used for managing loading indicators and error dialogs based on app state.
  BaseStatusHandler get baseStatusHandler => read(baseStatusHandlerPr);

  /// Provides access to the url launcher.
  ///
  /// Used for opening URLs in the default platform app.
  UrlLauncherAdapter get urlLauncher => read(urlLauncherPr);

  /// Provides access to the toast manager.
  ///
  /// Used for showing success and error toasts.
  ToastManager get toastManager => read(toastManagerPr);
}

/// A widget that initializes the dependency injection system for the application.
///
/// The [Injector] wraps the entire widget tree with a [ProviderScope], enabling
/// access to all declared Riverpod providers throughout the app.
///
/// Example:
///
/// ```dart
/// runApp(Injector(child: MyApp()));
/// ```
class Injector extends StatelessWidget {
  final EnvProvider envProvider;
  final Widget child;

  const Injector({super.key, required this.envProvider, required this.child});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        envPr.overrideWith((ref) {
          return envProvider;
        }),
        settingsPr.overrideWith((ref) {
          return ImplSettingsProvider(
            localeResolver: () => context.locale.languageCode,
            envProvider: ref.read(envPr),
          );
        }),
      ],
      child: child,
    );
  }
}

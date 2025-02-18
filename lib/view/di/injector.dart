import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/adapters/url_launcher_adapter/impl_url_launcher_adapter.dart';
import '../../common/adapters/url_launcher_adapter/url_launcher_adapter.dart';
import '../../data/local/app_local_database.dart';
import '../../data/mappers/app_cast_mapper.dart';
import '../../data/mappers/app_movies_mapper.dart';
import '../../data/mappers/app_rating_mapper.dart';
import '../../data/mappers/app_search_mapper.dart';
import '../../data/mappers/app_series_mapper.dart';
import '../../data/network/env_provider/env_provider.dart';
import '../../data/network/network_manager/impl_dio/dio_builder.dart';
import '../../data/network/network_manager/impl_dio/dio_error_handler.dart';
import '../../data/network/network_manager/impl_dio/impl_network_manager.dart';
import '../../data/network/network_manager/network_manager.dart';
import '../../data/network/services/details_service.dart';
import '../../data/network/services/home_service.dart';
import '../../data/network/services/search_service.dart';
import '../../data/network/utils/image_url_handler/image_url_handler.dart';
import '../../data/network/utils/image_url_handler/impl_image_url_handler.dart';
import '../../data/network/utils/media_response_handler/impl_media_response_handler.dart';
import '../../data/network/utils/media_response_handler/media_response_handler.dart';
import '../../data/repositories/details/details_remote_data_source.dart';
import '../../data/repositories/details/impl_details_repository.dart';
import '../../data/repositories/home/home_remote_data_source.dart';
import '../../data/repositories/home/impl_home_repository.dart';
import '../../data/repositories/media_local_data_source.dart';
import '../../data/repositories/search/impl_search_repository.dart';
import '../../data/repositories/search/search_remote_data_source.dart';
import '../../data/repositories/settings_provider.dart';
import '../../data/repositories/watch/impl_watch_repository.dart';
import '../../data/repositories/watch/watch_local_data_source.dart';
import '../../data/sources/impl_details_remote_data_source.dart';
import '../../data/sources/impl_home_remote_data_source.dart';
import '../../data/sources/impl_media_local_data_source.dart';
import '../../data/sources/impl_search_remote_data_source.dart';
import '../../data/sources/impl_settings_provider.dart';
import '../../data/sources/impl_watch_local_data_source.dart';
import '../../data/utils/media_merger/impl_media_merger.dart';
import '../../data/utils/media_merger/media_merger.dart';
import '../../domain/repositories/details_repository.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/repositories/search_repository.dart';
import '../../domain/repositories/watch_repository.dart';
import '../../domain/usecases/details/details_movie_use_case.dart';
import '../../domain/usecases/details/details_series_use_case.dart';
import '../../domain/usecases/home/home_movies_use_case.dart';
import '../../domain/usecases/home/home_series_use_case.dart';
import '../../domain/usecases/search/search_movies_use_case.dart';
import '../../domain/usecases/search/search_series_use_case.dart';
import '../../domain/usecases/watch/watch_movie_use_case.dart';
import '../../domain/usecases/watch/watch_series_use_case.dart';
import '../ui/base/view_model/base_status_handler.dart';
import '../ui/impl_base_status_handler.dart';
import '../ui/navigation/app_router.dart';
import '../ui/navigation/impl_app_router.dart';
import '../ui/resources/app_theme.dart';
import '../ui/widgets/dialogs/error_dialog/error_dialog_manager.dart';
import '../ui/widgets/dialogs/loading_dialog/loading_dialog_manager.dart';

// CORE
final appRouterPr = Provider<AppRouter>(
  (ref) => ImplAppRouter(rootNavKey: GlobalKey<NavigatorState>()),
);

final appThemePr = Provider<AppTheme>((_) => AppTheme());

final baseStatusHandlerPr = Provider<BaseStatusHandler>((ref) {
  final rootNavKey = ref.read(appRouterPr).rootNavKey;
  final loadingManager = LoadingDialogManager(rootNavKey: rootNavKey);
  final errorManager = ErrorDialogManager(rootNavKey: rootNavKey);

  return ImplBaseStatusHandler(
    loadingDialogManager: loadingManager,
    errorDialogManager: errorManager,
  );
});

// Will be initialized in ProviderScope.
final envPr = Provider<EnvProvider>((_) => throw UnimplementedError());

// Will be initialized in ProviderScope.
final settingsPr =
    Provider<SettingsProvider>((_) => throw UnimplementedError());

final mediaApiClientPr = Provider<NetworkManager>((ref) {
  final baseUrl = ref.read(envPr).baseUrl;
  final settingsProvider = ref.read(settingsPr);

  final dioBuilder = DioBuilder(settingsProvider: settingsProvider)
      .baseUrl(baseUrl)
      .headers()
      .language();

  if (kDebugMode) dioBuilder.logger();

  return ImplNetworkManager(
    dio: dioBuilder.build(),
    errorHandler: DioErrorHandler(),
  );
});

final imageUrlHandlerPr = Provider<ImageUrlHandler>(
  (ref) => ImplImageUrlHandler(envProvider: ref.read(envPr)),
);
final mediaResponseHandlerPr = Provider<MediaResponseHandler>(
  (ref) => ImpMediaResponseHandler(
    imageUrlHandler: ref.read(imageUrlHandlerPr),
  ),
);

final localDatabasePr = Provider<AppLocalDatabase>((_) => AppLocalDatabase());

final castMapperPr = Provider<AppCastMapper>((_) => AppCastMapper());
final ratingMapperPr = Provider<AppRatingMapper>((_) => AppRatingMapper());
final moviesMapperPr = Provider<AppMoviesMapper>(
  (ref) => AppMoviesMapper(
    ratingMapper: ref.read(ratingMapperPr),
    castMapper: ref.read(castMapperPr),
  ),
);
final seriesMapperPr = Provider<AppSeriesMapper>(
  (ref) => AppSeriesMapper(
    ratingMapper: ref.read(ratingMapperPr),
    castMapper: ref.read(castMapperPr),
  ),
);

final mediaMergerPr = Provider<MediaMerger>((_) => ImplMediaMerger());
final mediaLocalDataSourcePr = Provider<MediaLocalDataSource>(
  (ref) => ImplMediaLocalDataSource(
    database: ref.read(localDatabasePr),
    mediaMerger: ref.read(mediaMergerPr),
  ),
);

final urlLauncherPr = Provider<UrlLauncherAdapter>(
  (_) => ImplUrlLauncherAdapter(),
);

// HOME
final homeServicePr = Provider<HomeService>((ref) => HomeService(
      mediaApiClient: ref.read(mediaApiClientPr),
      responseHandler: ref.read(mediaResponseHandlerPr),
    ));
final homeRemoteDataSourcePr = Provider<HomeRemoteDataSource>(
  (ref) => ImplHomeRemoteDataSource(service: ref.read(homeServicePr)),
);
final homeRepositoryPr = Provider<HomeRepository>((ref) => ImplHomeRepository(
      dataSource: ref.read(homeRemoteDataSourcePr),
      localDataSource: ref.read(mediaLocalDataSourcePr),
      moviesMapper: ref.read(moviesMapperPr),
      seriesMapper: ref.read(seriesMapperPr),
    ));
final homeMoviesUseCasePr =
    Provider<HomeMoviesUseCase>((ref) => HomeMoviesUseCase(
          repository: ref.read(homeRepositoryPr),
        ));
final homeSeriesUseCasePr =
    Provider<HomeSeriesUseCase>((ref) => HomeSeriesUseCase(
          repository: ref.read(homeRepositoryPr),
        ));

// SEARCH
final searchServicePr = Provider<SearchService>((ref) => SearchService(
      mediaApiClient: ref.read(mediaApiClientPr),
      responseHandler: ref.read(mediaResponseHandlerPr),
    ));
final searchRemoteDataSourcePr = Provider<SearchRemoteDataSource>(
  (ref) => ImplSearchRemoteDataSource(service: ref.read(searchServicePr)),
);
final searchMapperPr = Provider<AppSearchMapper>((_) => AppSearchMapper());
final searchRepositoryPr =
    Provider<SearchRepository>((ref) => ImplSearchRepository(
          dataSource: ref.read(searchRemoteDataSourcePr),
          localDataSource: ref.read(mediaLocalDataSourcePr),
          searchMapper: ref.read(searchMapperPr),
          moviesMapper: ref.read(moviesMapperPr),
          seriesMapper: ref.read(seriesMapperPr),
        ));
final searchMoviesUseCasePr =
    Provider<SearchMoviesUseCase>((ref) => SearchMoviesUseCase(
          repository: ref.read(searchRepositoryPr),
        ));
final searchSeriesUseCasePr =
    Provider<SearchSeriesUseCase>((ref) => SearchSeriesUseCase(
          repository: ref.read(searchRepositoryPr),
        ));

// DETAILS
final detailsServicePr = Provider<DetailsService>((ref) => DetailsService(
      mediaApiClient: ref.read(mediaApiClientPr),
      imageUrlHandler: ref.read(imageUrlHandlerPr),
    ));
final detailsRemoteDataSourcePr = Provider<DetailsRemoteDataSource>(
  (ref) => ImplDetailsRemoteDataSource(service: ref.read(detailsServicePr)),
);
final detailsMapperPr = Provider<AppCastMapper>((_) => AppCastMapper());
final detailsRepositoryPr =
    Provider<DetailsRepository>((ref) => ImplDetailsRepository(
          dataSource: ref.read(detailsRemoteDataSourcePr),
          localDataSource: ref.read(mediaLocalDataSourcePr),
          moviesMapper: ref.read(moviesMapperPr),
          seriesMapper: ref.read(seriesMapperPr),
        ));
final detailsMovieUseCasePr =
    Provider<DetailsMovieUseCase>((ref) => DetailsMovieUseCase(
          repository: ref.read(detailsRepositoryPr),
        ));
final detailsSeriesUseCasePr =
    Provider<DetailsSeriesUseCase>((ref) => DetailsSeriesUseCase(
          repository: ref.read(detailsRepositoryPr),
        ));

// WATCH
final watchLocalDataSourcePr = Provider<WatchLocalDataSource>(
  (ref) => ImplWatchLocalDataSource(database: ref.read(localDatabasePr)),
);
final watchRepositoryPr =
    Provider<WatchRepository>((ref) => ImplWatchRepository(
          dataSource: ref.read(watchLocalDataSourcePr),
          moviesMapper: ref.read(moviesMapperPr),
          seriesMapper: ref.read(seriesMapperPr),
        ));
final watchMoviesUseCasePr =
    Provider<WatchMovieUseCase>((ref) => WatchMovieUseCase(
          repository: ref.read(watchRepositoryPr),
        ));
final watchSeriesUseCasePr =
    Provider<WatchSeriesUseCase>((ref) => WatchSeriesUseCase(
          repository: ref.read(watchRepositoryPr),
        ));

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
  /// Used for opening URLs in the in-app web view.
  UrlLauncherAdapter get urlLauncher => read(urlLauncherPr);
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

  const Injector({
    super.key,
    required this.envProvider,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(overrides: [
      envPr.overrideWith((ref) {
        return envProvider;
      }),
      settingsPr.overrideWith((ref) {
        return ImplSettingsProvider(
          localeResolver: () => context.locale.languageCode,
          envProvider: ref.read(envPr),
        );
      }),
    ], child: child);
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/mappers/app_home_mapper.dart';
import '../../data/mappers/app_movies_mapper.dart';
import '../../data/mappers/app_series_mapper.dart';
import '../../data/network/env_provider/env_provider.dart';
import '../../data/network/network_manager/impl_dio/dio_builder.dart';
import '../../data/network/network_manager/impl_dio/dio_error_handler.dart';
import '../../data/network/network_manager/impl_dio/impl_network_manager.dart';
import '../../data/network/network_manager/network_manager.dart';
import '../../data/network/services/home_service.dart';
import '../../data/network/utils/image_url_handler/image_url_handler.dart';
import '../../data/network/utils/image_url_handler/impl_image_url_handler.dart';
import '../../data/repositories/home/home_remote_data_source.dart';
import '../../data/repositories/home/impl_home_repository.dart';
import '../../data/repositories/settings_provider.dart';
import '../../data/sources/impl_home_remote_data_source.dart';
import '../../data/sources/impl_settings_provider.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/usecases/home_movies_use_case.dart';
import '../../domain/usecases/home_series_use_case.dart';
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

final moviesApiClientPr = Provider<NetworkManager>((ref) {
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

final moviesMapperPr = Provider<AppMoviesMapper>((_) => AppMoviesMapper());
final seriesMapperPr = Provider<AppSeriesMapper>((_) => AppSeriesMapper());

// HOME
final homeServicePr = Provider<HomeService>((ref) => HomeService(
      moviesApiClient: ref.read(moviesApiClientPr),
      imageUrlHandler: ref.read(imageUrlHandlerPr),
    ));
final homeRemoteDataSourcePr = Provider<HomeRemoteDataSource>(
  (ref) => ImplHomeRemoteDataSource(service: ref.read(homeServicePr)),
);
final homeMapperPr = Provider<AppHomeMapper>(
  (ref) => AppHomeMapper(
    moviesMapper: ref.read(moviesMapperPr),
    seriesMapper: ref.read(seriesMapperPr),
  ),
);
final homeRepositoryPr = Provider<HomeRepository>((ref) => ImplHomeRepository(
      dataSource: ref.read(homeRemoteDataSourcePr),
      mapper: ref.read(homeMapperPr),
    ));
final homeMoviesUseCasePr =
    Provider<HomeMoviesUseCase>((ref) => HomeMoviesUseCase(
          repository: ref.read(homeRepositoryPr),
        ));
final homeSeriesUseCasePr =
    Provider<HomeSeriesUseCase>((ref) => HomeSeriesUseCase(
          repository: ref.read(homeRepositoryPr),
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

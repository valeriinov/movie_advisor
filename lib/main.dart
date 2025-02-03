import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'common/app_locales.dart';
import 'view/di/system_settings.dart';
import 'view/di/injector.dart';
import 'view/ui/widgets/flavor_banner.dart';
import 'flavors.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  _validateFlavor();

  await SystemSettings.initializeSystemSettings();
  runApp(
    LocalizationWrapper(
      child: FlavorBanner(
        name: F.name,
        isVisible: kDebugMode, // TODO: Set the visibility of the flavor banner
        child: Injector(child: MyApp()),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(context, ref) {
    final routerProvider = ref.appRouter;
    final themeProvider = ref.appTheme;
    
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: routerProvider.routerConfig,
      theme: themeProvider.theme,
    );
  }
}

class LocalizationWrapper extends StatelessWidget {
  final Widget child;

  const LocalizationWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        AppLocales.en.locale,
        AppLocales.uk.locale
      ],
      path: 'assets/translations',
      fallbackLocale: AppLocales.en.locale, // TODO: Set the default locale
      child: child,
    );
  }
}

void _validateFlavor() {
  if (F.appFlavor == null) {
    throw ArgumentError('App flavor is not set. Ensure the application is run '
        'with a specific flavor entry point (e.g., main_dev.dart or main_prod.dart).');
  }
}


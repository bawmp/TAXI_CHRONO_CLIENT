import 'package:dartz/dartz.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'features/core/infrastructure/common_import.dart';
import 'features/core/presentation/themes/app_themes.dart';
import 'l10n/app_localizations.dart';
import 'router/app_router.dart';

// This provider is use to initialize some data in the
// We can call functions that or info that we want to
// load when the launch
final initializeProvider = FutureProvider<Unit>((ref) async {
  return unit;
});

class RouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('/${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint('/${route.settings.name}');
  }
}

// Get an instance of AppRouter to handle routing
final _appRouter = AppRouter();

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      initializeProvider,
      (previous, next) {
        Future.delayed(const Duration(seconds: 2)).then((val) =>
            _appRouter.pushAndPopUntil(const SetupGPSLocationsRoute(),
                predicate: (route) => false));
      },
    );

    return MaterialApp.router(
      routerConfig: _appRouter.config(
        navigatorObservers: () => [
          RouteObserver(),
        ],
      ),
      title: 'Taxi Chrono',
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).appTitle,
      theme: AppThemes.lightTheme(),
      darkTheme: ThemeData.dark(),
    );
  }
}

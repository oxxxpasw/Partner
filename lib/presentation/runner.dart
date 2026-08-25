import 'dart:async';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/bloc_observer.dart';
import 'package:sosedifedi/config.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/firebase_options.dart';
import 'package:sosedifedi/generated/codegen_loader.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/application.dart';
import 'package:sosedifedi/presentation/runner.config.dart';
import 'package:sosedifedi/utils/flavor/flavor.dart';
import 'package:sosedifedi/utils/splash_control.dart';

enum FlavorKeys {
  test('apptest'),
  release('apprelease'),
  googlePlay('googleplay'),
  appGallery('appgallery'),
  ruStore('rustore');

  const FlavorKeys(this.key);

  final String key;
}

///Метод инициализации GetIt
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [
    AppEnvironment,
  ],
)
class Runner {
  static final _injectableInitCompleter = Completer<void>();

  static Future<void> get injectableInitFuture =>
      _injectableInitCompleter.future;

  static Future<void> run() async {
    runZonedGuarded(
      () async {
        WidgetsBinding widgetsBinding =
            WidgetsFlutterBinding.ensureInitialized();
        SplashControl.preserve(widgetsBinding: widgetsBinding);
        final appEnvironment = await getEnv();
        await initializeFlutterPluginsAndDependencies(
          appEnvironment: appEnvironment,
        );
        Bloc.observer = CustomBlocObserver();
        return runApp(
          Builder(
            builder: (context) {
              final child = EasyLocalization(
                supportedLocales: const [Locale('ru')],
                path: 'assets/translations',
                fallbackLocale: const Locale('ru'),
                useOnlyLangCode: true,
                assetLoader: const CodegenLoader(),
                child: Application(
                  appEnvironment: appEnvironment,
                ),
              );
              if (appEnvironment.configType == ConfigType.release) {
                return child;
              }
              return Directionality(
                textDirection: TextDirection.ltr,
                child: Banner(
                  message: 'TEST',
                  location: BannerLocation.topStart,
                  child: child,
                ),
              );
            },
          ),
        );
      },
      (Object error, StackTrace stack) {
        GetIt.I.get<AnalystService>().error('$error\n$stack');
      },
      zoneSpecification: const ZoneSpecification(
        print: _print,
      ),
    );
  }

  static void _print(Zone self, ZoneDelegate parent, Zone zone, String line) {
    if (kDebugMode) {
      parent.print(zone, line);
    }
  }

  static Future<AppEnvironment> getEnv() async {
    // Параметры окружения переданные при сборке/запуске проекта
    const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');
    const geocoderApiKeyEnv = String.fromEnvironment('GEOCODER_API_KEY');

    WidgetsFlutterBinding.ensureInitialized();

    final env = await FlavorApi.instance.containsKey(FlavorKeys.test.key)
        ? testAppEnvironment
        : releaseAppEnvironment;

    const buildType = !kReleaseMode || debugInstrumentsEnv
        ? BuildType.debug
        : BuildType.release;

    return env.copyWith(
      buildType: buildType,
      debugOptions: const DebugOptions(
        debugShowCheckedModeBanner: buildType == BuildType.debug,
      ),
      debugPaintOptions: const DebugPaintOptions(),
      geocoderApiKey:
          geocoderApiKeyEnv.isEmpty ? env.geocoderApiKey : geocoderApiKeyEnv,
    );
  }

  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      GetIt.I
          .get<AnalystService>()
          .error('${details.exception}\n${details.stack}');
    };
    configureSystemChrome();

    await Future.wait([
      EasyLocalization.ensureInitialized(),
      Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      configureDependencies(appEnvironment: appEnvironment),
      configureNotifications(),
      setRefreshRate(),
    ]);
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);
    await $initGetIt(
      GetIt.instance,
      environment: appEnvironment.buildType.getItEnvironmentKey,
    );
    _injectableInitCompleter.complete();
  }

  static void configureSystemChrome() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static Future<void> configureNotifications() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_sosedifedi_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  static Future<void> setRefreshRate() async {
    try {
      if (defaultTargetPlatform == TargetPlatform.android) {
        await FlutterDisplayMode.setHighRefreshRate();
      }
    } catch (error, stack) {
      GetIt.I.get<AnalystService>().error('$error\n$stack');
    }
  }
}

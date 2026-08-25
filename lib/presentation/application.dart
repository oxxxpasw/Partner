import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get_it/get_it.dart';
import 'package:sosedifedi/constants.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/components/shimmer.dart';
import 'package:sosedifedi/presentation/router/analyst_router_observer.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/router/current_route_to_stream_observer.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';

import 'components/scroll_behaviors.dart';

class Application extends StatefulWidget {
  const Application({
    super.key,
    required this.appEnvironment,
    this.initialDeepLink,
  });

  final AppEnvironment appEnvironment;
  final String? initialDeepLink;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();
    return MaterialApp.router(
      onGenerateTitle: (context) => context.tr(LocaleKeys.title),
      restorationScopeId: 'sosedifedi_root_scope_id',
      theme: GetIt.I.get(),
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
        EasyLocalization.of(context)!.delegate,
      ],
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const StretchingScrollBehavior(),
          child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: kDefaultSystemUiOverlayStyle,
            child: Shimmer(
              linearGradient: Theme.of(context)
                  .extension<CustomThemeExtension>()!
                  .shimmerGradient,
              child: Toast(
                navigatorKey: appRouter.navigatorKey,
                child: child!,
              ),
            ),
          ),
        );
      },
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          GetIt.I.get<AnalyticsRouteObserver>(),
          GetIt.I.get<CurrentRouteToStreamObserver>(),
          GetIt.I.get<AutoRouteObserver>(),
        ],
        navRestorationScopeId: 'sosedifedi_router_restoration_id',
      ),
    );
  }
}

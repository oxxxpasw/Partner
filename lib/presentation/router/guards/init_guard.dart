import 'package:auto_route/auto_route.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

typedef IsInited = bool Function();

/// Гард проверяющий что инициализация прошла успешно (н-р: загрузка конфига)
///
/// Отображает Splash-Screen в случае если инициализация не была завершена,
/// после её завершения пользователь будет перенаправлен на исходный маршрут
class InitGuard extends AutoRouteGuard {
  @protected
  final IsInited isInited;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate()) {
      _next(resolver);
    } else {
      resolver.redirectUntil(SplashRoute(onLoad: (deepLink) {
        if (deepLink == null) {
          return _next(resolver);
        }
        _next(resolver, false);
        router.pushPath(deepLink, includePrefixMatches: true);
      }));
    }
  }

  /// next() можно звать только один раз; гонки со стороны reevaluateGuards
  /// и страховки сплэша добирались сюда повторно и роняли навигацию
  /// (assertion "resolver.next() is only called once") — приложение
  /// оставалось на нативном сплэше.
  void _next(NavigationResolver resolver, [bool updateUrl = true]) {
    try {
      resolver.next(updateUrl);
    } catch (_) {}
  }

  Future<bool> canNavigate() async => isInited();
}

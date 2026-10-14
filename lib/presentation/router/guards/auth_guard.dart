import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

typedef IsAuthorized = bool Function();

class AuthGuard extends AutoRouteGuard {
  @protected
  final IsAuthorized isAuthorized;

  AuthGuard({required this.isAuthorized});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate()) {
      _next(resolver);
    } else {
      resolver.redirectUntil(
        AuthRoute(
          canSkipAuth: false,
          onComplete: () async {
            if (await canNavigate()) {
              _next(resolver);
              return;
            }
            if (router.canNavigateBack) {
              router.pop();
            }
          },
        ),
      );
    }
  }

  /// next() можно звать только один раз; reevaluateGuards и страховка
  /// сплэша могут добраться сюда повторно — глушим повторный вызов.
  void _next(NavigationResolver resolver, [bool updateUrl = true]) {
    try {
      resolver.next(updateUrl);
    } catch (_) {}
  }

  Future<bool> canNavigate() async => isAuthorized();
}

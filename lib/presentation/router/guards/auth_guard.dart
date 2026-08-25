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
      resolver.next();
    } else {
      resolver.redirectUntil(
        AuthRoute(
          canSkipAuth: false,
          onComplete: () async {
            if (await canNavigate()) {
              resolver.next();
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

  Future<bool> canNavigate() async => isAuthorized();
}

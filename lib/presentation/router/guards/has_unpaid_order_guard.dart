import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';

typedef HasUnpaidOrder = bool Function();

class HasUnpaidOrderGuard extends AutoRouteGuard {
  @protected
  final HasUnpaidOrder hasUnpaidOrder;

  HasUnpaidOrderGuard({
    required this.hasUnpaidOrder,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate()) {
      _next(resolver);
    } else {
      resolver.redirectUntil(
        HasUnpaidOrderPopup(
          onPayment: () {
            _next(resolver);
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

  Future<bool> canNavigate() async => !hasUnpaidOrder();
}

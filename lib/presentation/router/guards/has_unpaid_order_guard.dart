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
      resolver.next();
    } else {
      resolver.redirectUntil(
        HasUnpaidOrderPopup(
          onPayment: () {
            resolver.next();
          },
        ),
      );
    }
  }

  Future<bool> canNavigate() async => !hasUnpaidOrder();
}

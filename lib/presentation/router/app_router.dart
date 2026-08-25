import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_router.gr.dart';
export 'app_router.gr.dart';

import 'guards/city_guard.dart';
import 'guards/has_unfinished_purchase_guard.dart';
import 'guards/has_unpaid_order_guard.dart';
import 'guards/auth_guard.dart';
import 'guards/init_guard.dart';
import 'route_builders/modal_dialog.dart';
import 'route_builders/modal_sheet.dart';

/// Роутер приложения
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  AppRouter({
    super.navigatorKey,
    required this.initGuard,
    required this.authGuard,
    required this.cityGuard,
    required this.hasUnpaidOrderGuard,
    required this.hasUnfinishedPurchaseGuard,
  });

  final InitGuard initGuard;
  final AuthGuard authGuard;
  final CityGuard cityGuard;
  final HasUnpaidOrderGuard hasUnpaidOrderGuard;
  final HasUnfinishedPurchaseGuard hasUnfinishedPurchaseGuard;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: SplashRoute.page,
          children: [
            CustomRoute(
              page: SplashLoadingRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              page: SplashErrorRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            ),
            CustomRoute(
              page: SplashUpdateRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
            )
          ],
        ),
        AdaptiveRoute(
          path: '/auth',
          page: AuthRoute.page,
          guards: [initGuard],
          children: [
            AdaptiveRoute(
              path: 'start',
              page: StartRoute.page,
            ),
            AdaptiveRoute(
              path: 'phone-input',
              page: PhoneInputRoute.page,
            ),
            AdaptiveRoute(
              path: 'code-input',
              page: CodeInputRoute.page,
            ),
            AdaptiveRoute(
              path: 'loading',
              page: AuthLoadingRoute.page,
              initial: true,
            ),
          ],
        ),
        AdaptiveRoute(
          path: '/choose_city',
          page: CityListRoute.page,
          guards: [initGuard, authGuard],
        ),
        AdaptiveRoute(
          path: '/',
          initial: true,
          page: HomeRoute.page,
          guards: [initGuard, authGuard],
        ),
        AdaptiveRoute(
          path: '/requests',
          page: VendistaRequestsRoute.page,
          guards: [initGuard, authGuard],
        ),
        AdaptiveRoute(
          path: '/division-details/:divisionId',
          page: DivisionDetailsRoute.page,
          guards: [initGuard, authGuard],
        ),
        AdaptiveRoute(
          path: '/user-data',
          page: UserDataRoute.page,
          guards: [initGuard, authGuard],
        ),
        AdaptiveRoute(
          path: 'user-profile',
          page: UserProfileRoute.page,
          children: [
            AdaptiveRoute(
              path: '',
              page: ProfileRoute.page,
              initial: true,
            ),
            AdaptiveRoute(
              path: 'legal-info',
              page: LegalInfoRoute.page,
            ),
          ],
        ),
        AdaptiveRoute(path: '/confirm-order', page: ConfirmOrderRoute.page, guards: [
          initGuard,
          authGuard,
        ], children: [
          CustomRoute(
            path: 'loading',
            page: OrderLoadingRoute.page,
            initial: true,
            transitionsBuilder: transitionsBuilder,
          ),
          CustomRoute(
            path: 'form',
            page: OrderFormRoute.page,
            transitionsBuilder: transitionsBuilder,
          ),
        ]),
        AdaptiveRoute(
          path: '/fridge-qr',
          page: FridgeQrScanRoute.page,
          guards: [
            initGuard,
            authGuard,
            cityGuard,
            hasUnpaidOrderGuard,
            hasUnfinishedPurchaseGuard,
          ],
          children: [
            CustomRoute(
              page: ScanFridgeRoute.page,
              initial: true,
              transitionsBuilder: fadeUpwardsPageTransitionBuilder,
              maintainState: false,
            ),
            CustomRoute(
              page: ScanCartRoute.page,
              transitionsBuilder: fadeUpwardsPageTransitionBuilder,
              maintainState: false,
            ),
          ],
        ),

        AdaptiveRoute(
          path: '/create-request',
          page: CreateVendistaRequestRoute.page,
          guards: [
            initGuard,
            authGuard,
          ],
          children: [
            CustomRoute(
              page: VendistaAuthRoute.page,
              initial: true,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              page: VendistaChooseIdRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
          ],
        ),
        AdaptiveRoute(
          path: '/request-details',
          page: VendistaRequestDetailsRoute.page,
          guards: [
            initGuard,
            authGuard,
          ],
        ),

        AdaptiveRoute(
          path: '/fridge-qr-2',
          page: FridgeQrScanRoute2.page,
          guards: [initGuard, authGuard],
          children: [
            CustomRoute(
              page: FridgeCartRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              page: ScanProductRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'payment-processing',
              page: PaymentCompletionRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-payment-type',
              page: ChoosePaymentTypeRoute2.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
          ],
        ),

        AdaptiveRoute(
          maintainState: false,
          path: '/qr',
          page: QrScanRoute.page,
          guards: [
            initGuard,
            authGuard,
          ],
        ),

        AdaptiveRoute(
          path: '/create-order',
          page: CreateOrderRoute.page,
          guards: [initGuard, authGuard, cityGuard],
          children: [
            CustomRoute(
              path: 'check-address',
              page: CheckAddressRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-drink',
              page: ChooseDrinkRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'payment-processing',
              page: PaymentCompletionRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'coffee-processing',
              page: CoffeeProcessingRoute.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
            CustomRoute(
              path: 'choose-payment-type',
              page: ChoosePaymentTypeRoute2.page,
              transitionsBuilder: TransitionsBuilders.noTransition,
              duration: Duration.zero,
            ),
          ],
        ),

        AdaptiveRoute(
          path: '/report-problem',
          page: ReportProblemRoute.page,
          guards: [initGuard],
        ),

        CustomRoute(
          path: '/qr/search',
          page: CartSearchRoute.page,
          customRouteBuilder: roundedMaterialModalSheetBuilder,
          guards: [initGuard, authGuard],
        ),

        // Popups
        CustomRoute(
          page: PointListModalRoute.page,
          guards: [initGuard, cityGuard],
          customRouteBuilder: materialModalSheetBuilder,
        ),
        CustomRoute(
          path: '/new-order-info',
          page: NewOrderInfoRoute.page,
          customRouteBuilder: modalDialogBuilder,
          guards: [initGuard, authGuard],
        ),
        CustomRoute(
          path: '/report-problem-popup',
          page: ReportProblemPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/qr-report-problem-popup',
          page: QrReportProblemPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: OpenWithoutRegPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: BankAppNotInstalledPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: FridgeNotSelectedPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: BarcodeNotFoundPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: UserBannedPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: HasUnfinishedPurchasePopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: HasUnpaidOrderPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/feedback',
          page: SendFeedBackPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          page: ChangeCityPopup.page,
          customRouteBuilder: modalPopupBuilder,
          guards: [initGuard],
        ),

        // Payment
        AdaptiveRoute(
          page: ChoosePaymentTypeRoute3.page,
          guards: [initGuard],
        ),
        AdaptiveRoute(
          path: '/web-view-payment',
          page: WebViewPaymentRoute.page,
          fullscreenDialog: true,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/choose-sbp-payment',
          page: ChooseSpbPaymentRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard],
        ),
        CustomRoute(
          path: '/payment-completion-waiting',
          page: PaymentCompletionWaitingRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard],
        ),

        AdaptiveRoute(
          path: '/reviews',
          page: ReviewsRoute.page,
          guards: [initGuard, authGuard],
        ),

        AdaptiveRoute(
          path: '/reviews/:reviewId',
          page: ReviewDetailsRoute.page,
          guards: [initGuard, authGuard],
        ),

        CustomRoute(
          path: '/reports/:id',
          page: ReportRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard, authGuard],
        ),

        CustomRoute(
          path: '/events/:unitId',
          page: UnitEventsRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard, authGuard],
        ),

        CustomRoute(
          path: '/temp/:unitId',
          page: UnitTempRoute.page,
          customRouteBuilder: materialModalSheetBuilder,
          guards: [initGuard, authGuard],
        ),

        AdaptiveRoute(
          path: '/knowledge-base',
          page: KnowledgeBaseWebviewRoute.page,
          fullscreenDialog: true,
          guards: [initGuard],
        ),
        AdaptiveRoute(
          path: '/support-chat',
          page: SupportChatRoute.page,
          guards: [initGuard, authGuard],
        ),
        // Redirects
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];
}

Widget transitionsBuilder(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: ReverseAnimation(secondaryAnimation).drive(tween),
    transformHitTests: false,
    child: FadeTransition(
      opacity: ReverseAnimation(secondaryAnimation),
      child: SlideTransition(
        position: animation.drive(tween),
        child: FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
  );
}

Widget fadeUpwardsPageTransitionBuilder(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) =>
    const FadeUpwardsPageTransitionsBuilder()
        .buildTransitions(null, context, animation, secondaryAnimation, child);

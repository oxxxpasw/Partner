// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i64;
import 'package:collection/collection.dart' as _i73;
import 'package:flutter/cupertino.dart' as _i68;
import 'package:flutter/foundation.dart' as _i69;
import 'package:flutter/material.dart' as _i65;
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as _i71;
import 'package:sosedifedi/data/models/stores/stores.dart' as _i66;
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart'
    as _i70;
import 'package:sosedifedi/domain/models/payment/payment.dart' as _i72;
import 'package:sosedifedi/domain/models/product/product.dart' as _i67;
import 'package:sosedifedi/domain/models/vendista_request/vendista_request.dart'
    as _i74;
import 'package:sosedifedi/presentation/components/knowledge_base_webview_screen/knowledge_base_webview_screen.dart'
    as _i26;
import 'package:sosedifedi/presentation/components/payment/screens/choose_sbp.dart'
    as _i11;
import 'package:sosedifedi/presentation/components/payment/screens/payment_completion_waiting_screen.dart'
    as _i33;
import 'package:sosedifedi/presentation/components/payment/screens/web_view_payment_screen.dart'
    as _i63;
import 'package:sosedifedi/presentation/popups/bank_app_not_installed_popup/bank_app_not_installed_popup.dart'
    as _i3;
import 'package:sosedifedi/presentation/popups/change_city_popup/change_city_popup.dart'
    as _i6;
import 'package:sosedifedi/presentation/popups/fridge_not_selected_popup/fridge_not_selected_popup.dart'
    as _i20;
import 'package:sosedifedi/presentation/popups/has_unfinished_purchase_popup/has_unfinished_purchase_popup.dart'
    as _i23;
import 'package:sosedifedi/presentation/popups/has_unpaid_order_popup/has_unpaid_order_popup.dart'
    as _i24;
import 'package:sosedifedi/presentation/popups/open_without_reg_popup/open_without_reg_popup.dart'
    as _i29;
import 'package:sosedifedi/presentation/popups/report_problem_popup/qr_report_problem_popup.dart'
    as _i37;
import 'package:sosedifedi/presentation/popups/report_problem_popup/report_problem_popup.dart'
    as _i39;
import 'package:sosedifedi/presentation/popups/report_problem_popup/report_problem_screen.dart'
    as _i40;
import 'package:sosedifedi/presentation/popups/send_feedback_popup/send_feedback_popup.dart'
    as _i47;
import 'package:sosedifedi/presentation/popups/user_banned_popup/user_banned_popup.dart'
    as _i56;
import 'package:sosedifedi/presentation/screens/auth_screen/auth_screen.dart'
    as _i2;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/code_input_screen.dart'
    as _i13;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/loading.dart'
    as _i1;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/phone_input_screen.dart'
    as _i34;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/start_screen.dart'
    as _i52;
import 'package:sosedifedi/presentation/screens/cart_search_screen/cart_search_screen.dart'
    as _i5;
import 'package:sosedifedi/presentation/screens/choose_payment_type_screen/choose_payment_type_screen3.dart'
    as _i10;
import 'package:sosedifedi/presentation/screens/city_list_screen/city_list_screen.dart'
    as _i12;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/confirm_order_screen.dart'
    as _i15;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/screens/order_form_screen.dart'
    as _i30;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/screens/order_loading_screen.dart'
    as _i31;
import 'package:sosedifedi/presentation/screens/create_order_screen/create_order_screen.dart'
    as _i16;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/check_address_screen.dart'
    as _i7;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/choose_drink_screen.dart'
    as _i8;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/coffee_processing_screen.dart'
    as _i14;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/payment_completion_screen.dart'
    as _i32;
import 'package:sosedifedi/presentation/screens/create_vendista_request_screen/create_vendista_requests_screen.dart'
    as _i17;
import 'package:sosedifedi/presentation/screens/create_vendista_request_screen/screens/vendista_auth_screen.dart'
    as _i59;
import 'package:sosedifedi/presentation/screens/create_vendista_request_screen/screens/vendista_choose_id_screen.dart'
    as _i60;
import 'package:sosedifedi/presentation/screens/division_details/division_details.dart'
    as _i18;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/components/barcode_not_found_popup.dart'
    as _i4;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/fridge_qr_scan_screen.dart'
    as _i21;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/fridge_qr_scan_screen_2.dart'
    as _i22;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/cart_screen.dart'
    as _i19;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/fridge_choose_payment.dart'
    as _i9;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_cart_screen.dart'
    as _i44;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_screen.dart'
    as _i46;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_store_screen.dart'
    as _i45;
import 'package:sosedifedi/presentation/screens/home_screen/home_screen.dart'
    as _i25;
import 'package:sosedifedi/presentation/screens/new_order_info_screen/new_order_info_screen.dart'
    as _i28;
import 'package:sosedifedi/presentation/screens/point_list_screen/point_list_modal_screen.dart'
    as _i35;
import 'package:sosedifedi/presentation/screens/qr_scan_screen/qr_scan_screen.dart'
    as _i38;
import 'package:sosedifedi/presentation/screens/report_screen/report_screen.dart'
    as _i41;
import 'package:sosedifedi/presentation/screens/review_details_screen/review_details_screen.dart'
    as _i42;
import 'package:sosedifedi/presentation/screens/reviews_screen/reviews_screen.dart'
    as _i43;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_error_screen.dart'
    as _i48;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_loading_screen.dart'
    as _i49;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_update_screen.dart'
    as _i51;
import 'package:sosedifedi/presentation/screens/splash_screen/splash_screen.dart'
    as _i50;
import 'package:sosedifedi/presentation/screens/support_chat_screen/support_chat_screen.dart'
    as _i53;
import 'package:sosedifedi/presentation/screens/unit_events_screen/unit_events_screen.dart'
    as _i54;
import 'package:sosedifedi/presentation/screens/unit_temp_screen/unit_temp_screen.dart'
    as _i55;
import 'package:sosedifedi/presentation/screens/user_data_screen/user_data_screen.dart'
    as _i57;
import 'package:sosedifedi/presentation/screens/user_profile_screen/screens/legal_info_screen.dart'
    as _i27;
import 'package:sosedifedi/presentation/screens/user_profile_screen/screens/profile_screen.dart'
    as _i36;
import 'package:sosedifedi/presentation/screens/user_profile_screen/user_profile_screen.dart'
    as _i58;
import 'package:sosedifedi/presentation/screens/vendista_request_details_screen/vendista_request_details_screen.dart'
    as _i61;
import 'package:sosedifedi/presentation/screens/vendista_requests_screen/vendista_requests_screen.dart'
    as _i62;

/// generated route for
/// [_i1.AuthLoadingScreen]
class AuthLoadingRoute extends _i64.PageRouteInfo<void> {
  const AuthLoadingRoute({List<_i64.PageRouteInfo>? children})
    : super(AuthLoadingRoute.name, initialChildren: children);

  static const String name = 'AuthLoadingRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthLoadingScreen();
    },
  );
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i64.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i65.Key? key,
    _i65.VoidCallback? onComplete,
    bool canSkipAuth = true,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(
           key: key,
           onComplete: onComplete,
           canSkipAuth: canSkipAuth,
         ),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>(
        orElse: () => const AuthRouteArgs(),
      );
      return _i64.WrappedRoute(
        child: _i2.AuthScreen(
          key: args.key,
          onComplete: args.onComplete,
          canSkipAuth: args.canSkipAuth,
        ),
      );
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onComplete, this.canSkipAuth = true});

  final _i65.Key? key;

  final _i65.VoidCallback? onComplete;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onComplete: $onComplete, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AuthRouteArgs) return false;
    return key == other.key &&
        onComplete == other.onComplete &&
        canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ onComplete.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i3.BankAppNotInstalledPopup]
class BankAppNotInstalledPopup extends _i64.PageRouteInfo<void> {
  const BankAppNotInstalledPopup({List<_i64.PageRouteInfo>? children})
    : super(BankAppNotInstalledPopup.name, initialChildren: children);

  static const String name = 'BankAppNotInstalledPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i3.BankAppNotInstalledPopup();
    },
  );
}

/// generated route for
/// [_i4.BarcodeNotFoundPopup]
class BarcodeNotFoundPopup extends _i64.PageRouteInfo<void> {
  const BarcodeNotFoundPopup({List<_i64.PageRouteInfo>? children})
    : super(BarcodeNotFoundPopup.name, initialChildren: children);

  static const String name = 'BarcodeNotFoundPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i4.BarcodeNotFoundPopup();
    },
  );
}

/// generated route for
/// [_i5.CartSearchScreen]
class CartSearchRoute extends _i64.PageRouteInfo<CartSearchRouteArgs> {
  CartSearchRoute({
    _i65.Key? key,
    required _i66.Store store,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         CartSearchRoute.name,
         args: CartSearchRouteArgs(key: key, store: store),
         initialChildren: children,
       );

  static const String name = 'CartSearchRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CartSearchRouteArgs>();
      return _i64.WrappedRoute(
        child: _i5.CartSearchScreen(key: args.key, store: args.store),
      );
    },
  );
}

class CartSearchRouteArgs {
  const CartSearchRouteArgs({this.key, required this.store});

  final _i65.Key? key;

  final _i66.Store store;

  @override
  String toString() {
    return 'CartSearchRouteArgs{key: $key, store: $store}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CartSearchRouteArgs) return false;
    return key == other.key && store == other.store;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode;
}

/// generated route for
/// [_i6.ChangeCityPopup]
class ChangeCityPopup extends _i64.PageRouteInfo<ChangeCityPopupArgs> {
  ChangeCityPopup({
    _i65.Key? key,
    required _i66.City newCity,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ChangeCityPopup.name,
         args: ChangeCityPopupArgs(key: key, newCity: newCity),
         initialChildren: children,
       );

  static const String name = 'ChangeCityPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangeCityPopupArgs>();
      return _i6.ChangeCityPopup(key: args.key, newCity: args.newCity);
    },
  );
}

class ChangeCityPopupArgs {
  const ChangeCityPopupArgs({this.key, required this.newCity});

  final _i65.Key? key;

  final _i66.City newCity;

  @override
  String toString() {
    return 'ChangeCityPopupArgs{key: $key, newCity: $newCity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangeCityPopupArgs) return false;
    return key == other.key && newCity == other.newCity;
  }

  @override
  int get hashCode => key.hashCode ^ newCity.hashCode;
}

/// generated route for
/// [_i7.CheckAddressScreen]
class CheckAddressRoute extends _i64.PageRouteInfo<CheckAddressRouteArgs> {
  CheckAddressRoute({
    _i65.Key? key,
    required _i66.Store store,
    _i65.VoidCallback? onNextPressed,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         CheckAddressRoute.name,
         args: CheckAddressRouteArgs(
           key: key,
           store: store,
           onNextPressed: onNextPressed,
         ),
         initialChildren: children,
       );

  static const String name = 'CheckAddressRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckAddressRouteArgs>();
      return _i7.CheckAddressScreen(
        key: args.key,
        store: args.store,
        onNextPressed: args.onNextPressed,
      );
    },
  );
}

class CheckAddressRouteArgs {
  const CheckAddressRouteArgs({
    this.key,
    required this.store,
    this.onNextPressed,
  });

  final _i65.Key? key;

  final _i66.Store store;

  final _i65.VoidCallback? onNextPressed;

  @override
  String toString() {
    return 'CheckAddressRouteArgs{key: $key, store: $store, onNextPressed: $onNextPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CheckAddressRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        onNextPressed == other.onNextPressed;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode ^ onNextPressed.hashCode;
}

/// generated route for
/// [_i8.ChooseDrinkScreen]
class ChooseDrinkRoute extends _i64.PageRouteInfo<ChooseDrinkRouteArgs> {
  ChooseDrinkRoute({
    _i65.Key? key,
    required String storeFile,
    void Function(_i67.Product)? onProductSelected,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ChooseDrinkRoute.name,
         args: ChooseDrinkRouteArgs(
           key: key,
           storeFile: storeFile,
           onProductSelected: onProductSelected,
         ),
         initialChildren: children,
       );

  static const String name = 'ChooseDrinkRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseDrinkRouteArgs>();
      return _i64.WrappedRoute(
        child: _i8.ChooseDrinkScreen(
          key: args.key,
          storeFile: args.storeFile,
          onProductSelected: args.onProductSelected,
        ),
      );
    },
  );
}

class ChooseDrinkRouteArgs {
  const ChooseDrinkRouteArgs({
    this.key,
    required this.storeFile,
    this.onProductSelected,
  });

  final _i65.Key? key;

  final String storeFile;

  final void Function(_i67.Product)? onProductSelected;

  @override
  String toString() {
    return 'ChooseDrinkRouteArgs{key: $key, storeFile: $storeFile, onProductSelected: $onProductSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChooseDrinkRouteArgs) return false;
    return key == other.key && storeFile == other.storeFile;
  }

  @override
  int get hashCode => key.hashCode ^ storeFile.hashCode;
}

/// generated route for
/// [_i9.ChoosePaymentTypeScreen2]
class ChoosePaymentTypeRoute2 extends _i64.PageRouteInfo<void> {
  const ChoosePaymentTypeRoute2({List<_i64.PageRouteInfo>? children})
    : super(ChoosePaymentTypeRoute2.name, initialChildren: children);

  static const String name = 'ChoosePaymentTypeRoute2';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i9.ChoosePaymentTypeScreen2();
    },
  );
}

/// generated route for
/// [_i10.ChoosePaymentTypeScreen3]
class ChoosePaymentTypeRoute3
    extends _i64.PageRouteInfo<ChoosePaymentTypeRoute3Args> {
  ChoosePaymentTypeRoute3({
    _i68.Key? key,
    required String storeId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ChoosePaymentTypeRoute3.name,
         args: ChoosePaymentTypeRoute3Args(key: key, storeId: storeId),
         initialChildren: children,
       );

  static const String name = 'ChoosePaymentTypeRoute3';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChoosePaymentTypeRoute3Args>();
      return _i64.WrappedRoute(
        child: _i10.ChoosePaymentTypeScreen3(
          key: args.key,
          storeId: args.storeId,
        ),
      );
    },
  );
}

class ChoosePaymentTypeRoute3Args {
  const ChoosePaymentTypeRoute3Args({this.key, required this.storeId});

  final _i68.Key? key;

  final String storeId;

  @override
  String toString() {
    return 'ChoosePaymentTypeRoute3Args{key: $key, storeId: $storeId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChoosePaymentTypeRoute3Args) return false;
    return key == other.key && storeId == other.storeId;
  }

  @override
  int get hashCode => key.hashCode ^ storeId.hashCode;
}

/// generated route for
/// [_i11.ChooseSpbPaymentScreen]
class ChooseSpbPaymentRoute
    extends _i64.PageRouteInfo<ChooseSpbPaymentRouteArgs> {
  ChooseSpbPaymentRoute({
    _i69.Key? key,
    required Uri qrUrl,
    required String paymentId,
    required String storeId,
    required _i69.VoidCallback? onFailedPayment,
    _i69.VoidCallback? onBankOpened,
    _i69.VoidCallback? onPayment,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ChooseSpbPaymentRoute.name,
         args: ChooseSpbPaymentRouteArgs(
           key: key,
           qrUrl: qrUrl,
           paymentId: paymentId,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           onBankOpened: onBankOpened,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'ChooseSpbPaymentRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseSpbPaymentRouteArgs>();
      return _i64.WrappedRoute(
        child: _i11.ChooseSpbPaymentScreen(
          key: args.key,
          qrUrl: args.qrUrl,
          paymentId: args.paymentId,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          onBankOpened: args.onBankOpened,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class ChooseSpbPaymentRouteArgs {
  const ChooseSpbPaymentRouteArgs({
    this.key,
    required this.qrUrl,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onBankOpened,
    this.onPayment,
  });

  final _i69.Key? key;

  final Uri qrUrl;

  final String paymentId;

  final String storeId;

  final _i69.VoidCallback? onFailedPayment;

  final _i69.VoidCallback? onBankOpened;

  final _i69.VoidCallback? onPayment;

  @override
  String toString() {
    return 'ChooseSpbPaymentRouteArgs{key: $key, qrUrl: $qrUrl, paymentId: $paymentId, storeId: $storeId, onFailedPayment: $onFailedPayment, onBankOpened: $onBankOpened, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChooseSpbPaymentRouteArgs) return false;
    return key == other.key &&
        qrUrl == other.qrUrl &&
        paymentId == other.paymentId &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        onBankOpened == other.onBankOpened &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      qrUrl.hashCode ^
      paymentId.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      onBankOpened.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i12.CityListScreen]
class CityListRoute extends _i64.PageRouteInfo<CityListRouteArgs> {
  CityListRoute({
    _i65.Key? key,
    _i65.VoidCallback? onSelectSelected,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         CityListRoute.name,
         args: CityListRouteArgs(key: key, onSelectSelected: onSelectSelected),
         initialChildren: children,
       );

  static const String name = 'CityListRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CityListRouteArgs>(
        orElse: () => const CityListRouteArgs(),
      );
      return _i64.WrappedRoute(
        child: _i12.CityListScreen(
          key: args.key,
          onSelectSelected: args.onSelectSelected,
        ),
      );
    },
  );
}

class CityListRouteArgs {
  const CityListRouteArgs({this.key, this.onSelectSelected});

  final _i65.Key? key;

  final _i65.VoidCallback? onSelectSelected;

  @override
  String toString() {
    return 'CityListRouteArgs{key: $key, onSelectSelected: $onSelectSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CityListRouteArgs) return false;
    return key == other.key && onSelectSelected == other.onSelectSelected;
  }

  @override
  int get hashCode => key.hashCode ^ onSelectSelected.hashCode;
}

/// generated route for
/// [_i13.CodeInputScreen]
class CodeInputRoute extends _i64.PageRouteInfo<void> {
  const CodeInputRoute({List<_i64.PageRouteInfo>? children})
    : super(CodeInputRoute.name, initialChildren: children);

  static const String name = 'CodeInputRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i13.CodeInputScreen();
    },
  );
}

/// generated route for
/// [_i14.CoffeeProcessingScreen]
class CoffeeProcessingRoute
    extends _i64.PageRouteInfo<CoffeeProcessingRouteArgs> {
  CoffeeProcessingRoute({
    _i65.Key? key,
    _i65.VoidCallback? onSuccess,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         CoffeeProcessingRoute.name,
         args: CoffeeProcessingRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'CoffeeProcessingRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CoffeeProcessingRouteArgs>(
        orElse: () => const CoffeeProcessingRouteArgs(),
      );
      return _i14.CoffeeProcessingScreen(
        key: args.key,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class CoffeeProcessingRouteArgs {
  const CoffeeProcessingRouteArgs({this.key, this.onSuccess});

  final _i65.Key? key;

  final _i65.VoidCallback? onSuccess;

  @override
  String toString() {
    return 'CoffeeProcessingRouteArgs{key: $key, onSuccess: $onSuccess}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CoffeeProcessingRouteArgs) return false;
    return key == other.key && onSuccess == other.onSuccess;
  }

  @override
  int get hashCode => key.hashCode ^ onSuccess.hashCode;
}

/// generated route for
/// [_i15.ConfirmOrderScreen]
class ConfirmOrderRoute extends _i64.PageRouteInfo<ConfirmOrderRouteArgs> {
  ConfirmOrderRoute({
    _i65.Key? key,
    _i66.Store? store,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ConfirmOrderRoute.name,
         args: ConfirmOrderRouteArgs(key: key, store: store),
         initialChildren: children,
       );

  static const String name = 'ConfirmOrderRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmOrderRouteArgs>(
        orElse: () => const ConfirmOrderRouteArgs(),
      );
      return _i64.WrappedRoute(
        child: _i15.ConfirmOrderScreen(key: args.key, store: args.store),
      );
    },
  );
}

class ConfirmOrderRouteArgs {
  const ConfirmOrderRouteArgs({this.key, this.store});

  final _i65.Key? key;

  final _i66.Store? store;

  @override
  String toString() {
    return 'ConfirmOrderRouteArgs{key: $key, store: $store}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmOrderRouteArgs) return false;
    return key == other.key && store == other.store;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode;
}

/// generated route for
/// [_i16.CreateOrderScreen]
class CreateOrderRoute extends _i64.PageRouteInfo<CreateOrderRouteArgs> {
  CreateOrderRoute({
    _i65.Key? key,
    required _i66.Store store,
    required _i66.CoffeeMachine coffeeMachine,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         CreateOrderRoute.name,
         args: CreateOrderRouteArgs(
           key: key,
           store: store,
           coffeeMachine: coffeeMachine,
         ),
         initialChildren: children,
       );

  static const String name = 'CreateOrderRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateOrderRouteArgs>();
      return _i64.WrappedRoute(
        child: _i16.CreateOrderScreen(
          key: args.key,
          store: args.store,
          coffeeMachine: args.coffeeMachine,
        ),
      );
    },
  );
}

class CreateOrderRouteArgs {
  const CreateOrderRouteArgs({
    this.key,
    required this.store,
    required this.coffeeMachine,
  });

  final _i65.Key? key;

  final _i66.Store store;

  final _i66.CoffeeMachine coffeeMachine;

  @override
  String toString() {
    return 'CreateOrderRouteArgs{key: $key, store: $store, coffeeMachine: $coffeeMachine}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateOrderRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        coffeeMachine == other.coffeeMachine;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode ^ coffeeMachine.hashCode;
}

/// generated route for
/// [_i17.CreateVendistaRequestScreen]
class CreateVendistaRequestRoute extends _i64.PageRouteInfo<void> {
  const CreateVendistaRequestRoute({List<_i64.PageRouteInfo>? children})
    : super(CreateVendistaRequestRoute.name, initialChildren: children);

  static const String name = 'CreateVendistaRequestRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i17.CreateVendistaRequestScreen());
    },
  );
}

/// generated route for
/// [_i18.DivisionDetailsScreen]
class DivisionDetailsRoute
    extends _i64.PageRouteInfo<DivisionDetailsRouteArgs> {
  DivisionDetailsRoute({
    _i65.Key? key,
    required String divisionId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         DivisionDetailsRoute.name,
         args: DivisionDetailsRouteArgs(key: key, divisionId: divisionId),
         rawPathParams: {'divisionId': divisionId},
         initialChildren: children,
       );

  static const String name = 'DivisionDetailsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DivisionDetailsRouteArgs>(
        orElse: () => DivisionDetailsRouteArgs(
          divisionId: pathParams.getString('divisionId'),
        ),
      );
      return _i64.WrappedRoute(
        child: _i18.DivisionDetailsScreen(
          key: args.key,
          divisionId: args.divisionId,
        ),
      );
    },
  );
}

class DivisionDetailsRouteArgs {
  const DivisionDetailsRouteArgs({this.key, required this.divisionId});

  final _i65.Key? key;

  final String divisionId;

  @override
  String toString() {
    return 'DivisionDetailsRouteArgs{key: $key, divisionId: $divisionId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DivisionDetailsRouteArgs) return false;
    return key == other.key && divisionId == other.divisionId;
  }

  @override
  int get hashCode => key.hashCode ^ divisionId.hashCode;
}

/// generated route for
/// [_i19.FridgeCartScreen]
class FridgeCartRoute extends _i64.PageRouteInfo<FridgeCartRouteArgs> {
  FridgeCartRoute({
    _i65.Key? key,
    _i66.Store? store,
    String? fridgeId,
    bool restoreCart = false,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         FridgeCartRoute.name,
         args: FridgeCartRouteArgs(
           key: key,
           store: store,
           fridgeId: fridgeId,
           restoreCart: restoreCart,
         ),
         initialChildren: children,
       );

  static const String name = 'FridgeCartRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FridgeCartRouteArgs>(
        orElse: () => const FridgeCartRouteArgs(),
      );
      return _i19.FridgeCartScreen(
        key: args.key,
        store: args.store,
        fridgeId: args.fridgeId,
        restoreCart: args.restoreCart,
      );
    },
  );
}

class FridgeCartRouteArgs {
  const FridgeCartRouteArgs({
    this.key,
    this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final _i65.Key? key;

  final _i66.Store? store;

  final String? fridgeId;

  final bool restoreCart;

  @override
  String toString() {
    return 'FridgeCartRouteArgs{key: $key, store: $store, fridgeId: $fridgeId, restoreCart: $restoreCart}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeCartRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        restoreCart == other.restoreCart;
  }

  @override
  int get hashCode =>
      key.hashCode ^ store.hashCode ^ fridgeId.hashCode ^ restoreCart.hashCode;
}

/// generated route for
/// [_i20.FridgeNotSelectedPopup]
class FridgeNotSelectedPopup extends _i64.PageRouteInfo<void> {
  const FridgeNotSelectedPopup({List<_i64.PageRouteInfo>? children})
    : super(FridgeNotSelectedPopup.name, initialChildren: children);

  static const String name = 'FridgeNotSelectedPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i20.FridgeNotSelectedPopup();
    },
  );
}

/// generated route for
/// [_i21.FridgeQrScanScreen]
class FridgeQrScanRoute extends _i64.PageRouteInfo<FridgeQrScanRouteArgs> {
  FridgeQrScanRoute({
    _i65.Key? key,
    String? fridgeId,
    bool shouldSkipUnfinishedPurchaseGuard = false,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         FridgeQrScanRoute.name,
         args: FridgeQrScanRouteArgs(
           key: key,
           fridgeId: fridgeId,
           shouldSkipUnfinishedPurchaseGuard: shouldSkipUnfinishedPurchaseGuard,
         ),
         rawQueryParams: {'fridge-id': fridgeId},
         initialChildren: children,
       );

  static const String name = 'FridgeQrScanRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<FridgeQrScanRouteArgs>(
        orElse: () =>
            FridgeQrScanRouteArgs(fridgeId: queryParams.optString('fridge-id')),
      );
      return _i64.WrappedRoute(
        child: _i21.FridgeQrScanScreen(
          key: args.key,
          fridgeId: args.fridgeId,
          shouldSkipUnfinishedPurchaseGuard:
              args.shouldSkipUnfinishedPurchaseGuard,
        ),
      );
    },
  );
}

class FridgeQrScanRouteArgs {
  const FridgeQrScanRouteArgs({
    this.key,
    this.fridgeId,
    this.shouldSkipUnfinishedPurchaseGuard = false,
  });

  final _i65.Key? key;

  final String? fridgeId;

  final bool shouldSkipUnfinishedPurchaseGuard;

  @override
  String toString() {
    return 'FridgeQrScanRouteArgs{key: $key, fridgeId: $fridgeId, shouldSkipUnfinishedPurchaseGuard: $shouldSkipUnfinishedPurchaseGuard}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeQrScanRouteArgs) return false;
    return key == other.key &&
        fridgeId == other.fridgeId &&
        shouldSkipUnfinishedPurchaseGuard ==
            other.shouldSkipUnfinishedPurchaseGuard;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      fridgeId.hashCode ^
      shouldSkipUnfinishedPurchaseGuard.hashCode;
}

/// generated route for
/// [_i22.FridgeQrScanScreen2]
class FridgeQrScanRoute2 extends _i64.PageRouteInfo<FridgeQrScanRoute2Args> {
  FridgeQrScanRoute2({
    _i65.Key? key,
    _i66.Store? store,
    String? fridgeId,
    bool shouldSkipUnfinishedPurchaseGuard = false,
    required _i70.OrderCreationType creationType,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         FridgeQrScanRoute2.name,
         args: FridgeQrScanRoute2Args(
           key: key,
           store: store,
           fridgeId: fridgeId,
           shouldSkipUnfinishedPurchaseGuard: shouldSkipUnfinishedPurchaseGuard,
           creationType: creationType,
         ),
         initialChildren: children,
       );

  static const String name = 'FridgeQrScanRoute2';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FridgeQrScanRoute2Args>();
      return _i64.WrappedRoute(
        child: _i22.FridgeQrScanScreen2(
          key: args.key,
          store: args.store,
          fridgeId: args.fridgeId,
          shouldSkipUnfinishedPurchaseGuard:
              args.shouldSkipUnfinishedPurchaseGuard,
          creationType: args.creationType,
        ),
      );
    },
  );
}

class FridgeQrScanRoute2Args {
  const FridgeQrScanRoute2Args({
    this.key,
    this.store,
    this.fridgeId,
    this.shouldSkipUnfinishedPurchaseGuard = false,
    required this.creationType,
  });

  final _i65.Key? key;

  final _i66.Store? store;

  final String? fridgeId;

  final bool shouldSkipUnfinishedPurchaseGuard;

  final _i70.OrderCreationType creationType;

  @override
  String toString() {
    return 'FridgeQrScanRoute2Args{key: $key, store: $store, fridgeId: $fridgeId, shouldSkipUnfinishedPurchaseGuard: $shouldSkipUnfinishedPurchaseGuard, creationType: $creationType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeQrScanRoute2Args) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        shouldSkipUnfinishedPurchaseGuard ==
            other.shouldSkipUnfinishedPurchaseGuard &&
        creationType == other.creationType;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      store.hashCode ^
      fridgeId.hashCode ^
      shouldSkipUnfinishedPurchaseGuard.hashCode ^
      creationType.hashCode;
}

/// generated route for
/// [_i23.HasUnfinishedPurchasePopup]
class HasUnfinishedPurchasePopup
    extends _i64.PageRouteInfo<HasUnfinishedPurchasePopupArgs> {
  HasUnfinishedPurchasePopup({
    _i65.Key? key,
    required _i65.VoidCallback onActionPressed,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         HasUnfinishedPurchasePopup.name,
         args: HasUnfinishedPurchasePopupArgs(
           key: key,
           onActionPressed: onActionPressed,
         ),
         initialChildren: children,
       );

  static const String name = 'HasUnfinishedPurchasePopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HasUnfinishedPurchasePopupArgs>();
      return _i23.HasUnfinishedPurchasePopup(
        key: args.key,
        onActionPressed: args.onActionPressed,
      );
    },
  );
}

class HasUnfinishedPurchasePopupArgs {
  const HasUnfinishedPurchasePopupArgs({
    this.key,
    required this.onActionPressed,
  });

  final _i65.Key? key;

  final _i65.VoidCallback onActionPressed;

  @override
  String toString() {
    return 'HasUnfinishedPurchasePopupArgs{key: $key, onActionPressed: $onActionPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HasUnfinishedPurchasePopupArgs) return false;
    return key == other.key && onActionPressed == other.onActionPressed;
  }

  @override
  int get hashCode => key.hashCode ^ onActionPressed.hashCode;
}

/// generated route for
/// [_i24.HasUnpaidOrderPopup]
class HasUnpaidOrderPopup extends _i64.PageRouteInfo<HasUnpaidOrderPopupArgs> {
  HasUnpaidOrderPopup({
    _i65.Key? key,
    _i65.VoidCallback? onPayment,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         HasUnpaidOrderPopup.name,
         args: HasUnpaidOrderPopupArgs(key: key, onPayment: onPayment),
         initialChildren: children,
       );

  static const String name = 'HasUnpaidOrderPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HasUnpaidOrderPopupArgs>(
        orElse: () => const HasUnpaidOrderPopupArgs(),
      );
      return _i24.HasUnpaidOrderPopup(key: args.key, onPayment: args.onPayment);
    },
  );
}

class HasUnpaidOrderPopupArgs {
  const HasUnpaidOrderPopupArgs({this.key, this.onPayment});

  final _i65.Key? key;

  final _i65.VoidCallback? onPayment;

  @override
  String toString() {
    return 'HasUnpaidOrderPopupArgs{key: $key, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HasUnpaidOrderPopupArgs) return false;
    return key == other.key && onPayment == other.onPayment;
  }

  @override
  int get hashCode => key.hashCode ^ onPayment.hashCode;
}

/// generated route for
/// [_i25.HomeScreen]
class HomeRoute extends _i64.PageRouteInfo<void> {
  const HomeRoute({List<_i64.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i25.HomeScreen());
    },
  );
}

/// generated route for
/// [_i26.KnowledgeBaseWebviewScreen]
class KnowledgeBaseWebviewRoute
    extends _i64.PageRouteInfo<KnowledgeBaseWebviewRouteArgs> {
  KnowledgeBaseWebviewRoute({
    _i69.Key? key,
    required Uri uri,
    _i71.InAppWebViewSettings? webViewSettings,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         KnowledgeBaseWebviewRoute.name,
         args: KnowledgeBaseWebviewRouteArgs(
           key: key,
           uri: uri,
           webViewSettings: webViewSettings,
         ),
         initialChildren: children,
       );

  static const String name = 'KnowledgeBaseWebviewRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<KnowledgeBaseWebviewRouteArgs>();
      return _i26.KnowledgeBaseWebviewScreen(
        key: args.key,
        uri: args.uri,
        webViewSettings: args.webViewSettings,
      );
    },
  );
}

class KnowledgeBaseWebviewRouteArgs {
  const KnowledgeBaseWebviewRouteArgs({
    this.key,
    required this.uri,
    this.webViewSettings,
  });

  final _i69.Key? key;

  final Uri uri;

  final _i71.InAppWebViewSettings? webViewSettings;

  @override
  String toString() {
    return 'KnowledgeBaseWebviewRouteArgs{key: $key, uri: $uri, webViewSettings: $webViewSettings}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! KnowledgeBaseWebviewRouteArgs) return false;
    return key == other.key &&
        uri == other.uri &&
        webViewSettings == other.webViewSettings;
  }

  @override
  int get hashCode => key.hashCode ^ uri.hashCode ^ webViewSettings.hashCode;
}

/// generated route for
/// [_i27.LegalInfoScreen]
class LegalInfoRoute extends _i64.PageRouteInfo<void> {
  const LegalInfoRoute({List<_i64.PageRouteInfo>? children})
    : super(LegalInfoRoute.name, initialChildren: children);

  static const String name = 'LegalInfoRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i27.LegalInfoScreen();
    },
  );
}

/// generated route for
/// [_i28.NewOrderInfoScreen]
class NewOrderInfoRoute extends _i64.PageRouteInfo<NewOrderInfoRouteArgs> {
  NewOrderInfoRoute({
    _i65.Key? key,
    _i70.OrderCreationType orderCreationType = _i70.OrderCreationType.order,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         NewOrderInfoRoute.name,
         args: NewOrderInfoRouteArgs(
           key: key,
           orderCreationType: orderCreationType,
         ),
         initialChildren: children,
       );

  static const String name = 'NewOrderInfoRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewOrderInfoRouteArgs>(
        orElse: () => const NewOrderInfoRouteArgs(),
      );
      return _i28.NewOrderInfoScreen(
        key: args.key,
        orderCreationType: args.orderCreationType,
      );
    },
  );
}

class NewOrderInfoRouteArgs {
  const NewOrderInfoRouteArgs({
    this.key,
    this.orderCreationType = _i70.OrderCreationType.order,
  });

  final _i65.Key? key;

  final _i70.OrderCreationType orderCreationType;

  @override
  String toString() {
    return 'NewOrderInfoRouteArgs{key: $key, orderCreationType: $orderCreationType}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NewOrderInfoRouteArgs) return false;
    return key == other.key && orderCreationType == other.orderCreationType;
  }

  @override
  int get hashCode => key.hashCode ^ orderCreationType.hashCode;
}

/// generated route for
/// [_i29.OpenWithoutRegPopup]
class OpenWithoutRegPopup extends _i64.PageRouteInfo<OpenWithoutRegPopupArgs> {
  OpenWithoutRegPopup({
    _i65.Key? key,
    _i65.VoidCallback? onPressed,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         OpenWithoutRegPopup.name,
         args: OpenWithoutRegPopupArgs(key: key, onPressed: onPressed),
         initialChildren: children,
       );

  static const String name = 'OpenWithoutRegPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OpenWithoutRegPopupArgs>(
        orElse: () => const OpenWithoutRegPopupArgs(),
      );
      return _i29.OpenWithoutRegPopup(key: args.key, onPressed: args.onPressed);
    },
  );
}

class OpenWithoutRegPopupArgs {
  const OpenWithoutRegPopupArgs({this.key, this.onPressed});

  final _i65.Key? key;

  final _i65.VoidCallback? onPressed;

  @override
  String toString() {
    return 'OpenWithoutRegPopupArgs{key: $key, onPressed: $onPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OpenWithoutRegPopupArgs) return false;
    return key == other.key && onPressed == other.onPressed;
  }

  @override
  int get hashCode => key.hashCode ^ onPressed.hashCode;
}

/// generated route for
/// [_i30.OrderFormScreen]
class OrderFormRoute extends _i64.PageRouteInfo<void> {
  const OrderFormRoute({List<_i64.PageRouteInfo>? children})
    : super(OrderFormRoute.name, initialChildren: children);

  static const String name = 'OrderFormRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i30.OrderFormScreen();
    },
  );
}

/// generated route for
/// [_i31.OrderLoadingScreen]
class OrderLoadingRoute extends _i64.PageRouteInfo<void> {
  const OrderLoadingRoute({List<_i64.PageRouteInfo>? children})
    : super(OrderLoadingRoute.name, initialChildren: children);

  static const String name = 'OrderLoadingRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i31.OrderLoadingScreen();
    },
  );
}

/// generated route for
/// [_i32.PaymentCompletionScreen]
class PaymentCompletionRoute
    extends _i64.PageRouteInfo<PaymentCompletionRouteArgs> {
  PaymentCompletionRoute({
    _i65.Key? key,
    required _i72.Payment payment,
    required String storeId,
    required _i65.VoidCallback? onFailedPayment,
    required String currencySymbol,
    _i65.VoidCallback? onPayment,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         PaymentCompletionRoute.name,
         args: PaymentCompletionRouteArgs(
           key: key,
           payment: payment,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           currencySymbol: currencySymbol,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'PaymentCompletionRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCompletionRouteArgs>();
      return _i64.WrappedRoute(
        child: _i32.PaymentCompletionScreen(
          key: args.key,
          payment: args.payment,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          currencySymbol: args.currencySymbol,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class PaymentCompletionRouteArgs {
  const PaymentCompletionRouteArgs({
    this.key,
    required this.payment,
    required this.storeId,
    required this.onFailedPayment,
    required this.currencySymbol,
    this.onPayment,
  });

  final _i65.Key? key;

  final _i72.Payment payment;

  final String storeId;

  final _i65.VoidCallback? onFailedPayment;

  final String currencySymbol;

  final _i65.VoidCallback? onPayment;

  @override
  String toString() {
    return 'PaymentCompletionRouteArgs{key: $key, payment: $payment, storeId: $storeId, onFailedPayment: $onFailedPayment, currencySymbol: $currencySymbol, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PaymentCompletionRouteArgs) return false;
    return key == other.key &&
        payment == other.payment &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        currencySymbol == other.currencySymbol &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      payment.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      currencySymbol.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i33.PaymentCompletionWaitingScreen]
class PaymentCompletionWaitingRoute
    extends _i64.PageRouteInfo<PaymentCompletionWaitingRouteArgs> {
  PaymentCompletionWaitingRoute({
    _i65.Key? key,
    required String paymentId,
    required String storeId,
    required _i65.VoidCallback? onFailedPayment,
    _i65.VoidCallback? onPayment,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         PaymentCompletionWaitingRoute.name,
         args: PaymentCompletionWaitingRouteArgs(
           key: key,
           paymentId: paymentId,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'PaymentCompletionWaitingRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCompletionWaitingRouteArgs>();
      return _i64.WrappedRoute(
        child: _i33.PaymentCompletionWaitingScreen(
          key: args.key,
          paymentId: args.paymentId,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class PaymentCompletionWaitingRouteArgs {
  const PaymentCompletionWaitingRouteArgs({
    this.key,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onPayment,
  });

  final _i65.Key? key;

  final String paymentId;

  final String storeId;

  final _i65.VoidCallback? onFailedPayment;

  final _i65.VoidCallback? onPayment;

  @override
  String toString() {
    return 'PaymentCompletionWaitingRouteArgs{key: $key, paymentId: $paymentId, storeId: $storeId, onFailedPayment: $onFailedPayment, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PaymentCompletionWaitingRouteArgs) return false;
    return key == other.key &&
        paymentId == other.paymentId &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      paymentId.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i34.PhoneInputScreen]
class PhoneInputRoute extends _i64.PageRouteInfo<PhoneInputRouteArgs> {
  PhoneInputRoute({
    _i68.Key? key,
    bool canSkipAuth = true,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         PhoneInputRoute.name,
         args: PhoneInputRouteArgs(key: key, canSkipAuth: canSkipAuth),
         initialChildren: children,
       );

  static const String name = 'PhoneInputRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhoneInputRouteArgs>(
        orElse: () => const PhoneInputRouteArgs(),
      );
      return _i34.PhoneInputScreen(
        key: args.key,
        canSkipAuth: args.canSkipAuth,
      );
    },
  );
}

class PhoneInputRouteArgs {
  const PhoneInputRouteArgs({this.key, this.canSkipAuth = true});

  final _i68.Key? key;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'PhoneInputRouteArgs{key: $key, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PhoneInputRouteArgs) return false;
    return key == other.key && canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i35.PointListModalScreen]
class PointListModalRoute extends _i64.PageRouteInfo<PointListModalRouteArgs> {
  PointListModalRoute({
    _i68.Key? key,
    List<_i66.Store>? stores,
    bool autofocusOnSearch = false,
    _i68.Widget? title,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         PointListModalRoute.name,
         args: PointListModalRouteArgs(
           key: key,
           stores: stores,
           autofocusOnSearch: autofocusOnSearch,
           title: title,
         ),
         initialChildren: children,
       );

  static const String name = 'PointListModalRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PointListModalRouteArgs>(
        orElse: () => const PointListModalRouteArgs(),
      );
      return _i64.WrappedRoute(
        child: _i35.PointListModalScreen(
          key: args.key,
          stores: args.stores,
          autofocusOnSearch: args.autofocusOnSearch,
          title: args.title,
        ),
      );
    },
  );
}

class PointListModalRouteArgs {
  const PointListModalRouteArgs({
    this.key,
    this.stores,
    this.autofocusOnSearch = false,
    this.title,
  });

  final _i68.Key? key;

  final List<_i66.Store>? stores;

  final bool autofocusOnSearch;

  final _i68.Widget? title;

  @override
  String toString() {
    return 'PointListModalRouteArgs{key: $key, stores: $stores, autofocusOnSearch: $autofocusOnSearch, title: $title}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PointListModalRouteArgs) return false;
    return key == other.key &&
        const _i73.ListEquality<_i66.Store>().equals(stores, other.stores) &&
        autofocusOnSearch == other.autofocusOnSearch &&
        title == other.title;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i73.ListEquality<_i66.Store>().hash(stores) ^
      autofocusOnSearch.hashCode ^
      title.hashCode;
}

/// generated route for
/// [_i36.ProfileScreen]
class ProfileRoute extends _i64.PageRouteInfo<void> {
  const ProfileRoute({List<_i64.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i36.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i37.QrReportProblemPopup]
class QrReportProblemPopup
    extends _i64.PageRouteInfo<QrReportProblemPopupArgs> {
  QrReportProblemPopup({
    _i65.Key? key,
    String? error,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         QrReportProblemPopup.name,
         args: QrReportProblemPopupArgs(key: key, error: error),
         initialChildren: children,
       );

  static const String name = 'QrReportProblemPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QrReportProblemPopupArgs>(
        orElse: () => const QrReportProblemPopupArgs(),
      );
      return _i64.WrappedRoute(
        child: _i37.QrReportProblemPopup(key: args.key, error: args.error),
      );
    },
  );
}

class QrReportProblemPopupArgs {
  const QrReportProblemPopupArgs({this.key, this.error});

  final _i65.Key? key;

  final String? error;

  @override
  String toString() {
    return 'QrReportProblemPopupArgs{key: $key, error: $error}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QrReportProblemPopupArgs) return false;
    return key == other.key && error == other.error;
  }

  @override
  int get hashCode => key.hashCode ^ error.hashCode;
}

/// generated route for
/// [_i38.QrScanScreen]
class QrScanRoute extends _i64.PageRouteInfo<void> {
  const QrScanRoute({List<_i64.PageRouteInfo>? children})
    : super(QrScanRoute.name, initialChildren: children);

  static const String name = 'QrScanRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i38.QrScanScreen());
    },
  );
}

/// generated route for
/// [_i39.ReportProblemPopup]
class ReportProblemPopup extends _i64.PageRouteInfo<void> {
  const ReportProblemPopup({List<_i64.PageRouteInfo>? children})
    : super(ReportProblemPopup.name, initialChildren: children);

  static const String name = 'ReportProblemPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i39.ReportProblemPopup());
    },
  );
}

/// generated route for
/// [_i40.ReportProblemScreen]
class ReportProblemRoute extends _i64.PageRouteInfo<void> {
  const ReportProblemRoute({List<_i64.PageRouteInfo>? children})
    : super(ReportProblemRoute.name, initialChildren: children);

  static const String name = 'ReportProblemRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i40.ReportProblemScreen());
    },
  );
}

/// generated route for
/// [_i41.ReportScreen]
class ReportRoute extends _i64.PageRouteInfo<ReportRouteArgs> {
  ReportRoute({
    _i65.Key? key,
    required String id,
    required String? unitId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ReportRoute.name,
         args: ReportRouteArgs(key: key, id: id, unitId: unitId),
         rawPathParams: {'id': id},
         rawQueryParams: {'unitId': unitId},
         initialChildren: children,
       );

  static const String name = 'ReportRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final queryParams = data.queryParams;
      final args = data.argsAs<ReportRouteArgs>(
        orElse: () => ReportRouteArgs(
          id: pathParams.getString('id'),
          unitId: queryParams.optString('unitId'),
        ),
      );
      return _i64.WrappedRoute(
        child: _i41.ReportScreen(
          key: args.key,
          id: args.id,
          unitId: args.unitId,
        ),
      );
    },
  );
}

class ReportRouteArgs {
  const ReportRouteArgs({this.key, required this.id, required this.unitId});

  final _i65.Key? key;

  final String id;

  final String? unitId;

  @override
  String toString() {
    return 'ReportRouteArgs{key: $key, id: $id, unitId: $unitId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReportRouteArgs) return false;
    return key == other.key && id == other.id && unitId == other.unitId;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode ^ unitId.hashCode;
}

/// generated route for
/// [_i42.ReviewDetailsScreen]
class ReviewDetailsRoute extends _i64.PageRouteInfo<ReviewDetailsRouteArgs> {
  ReviewDetailsRoute({
    _i65.Key? key,
    required String reviewId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ReviewDetailsRoute.name,
         args: ReviewDetailsRouteArgs(key: key, reviewId: reviewId),
         rawPathParams: {'reviewId': reviewId},
         initialChildren: children,
       );

  static const String name = 'ReviewDetailsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ReviewDetailsRouteArgs>(
        orElse: () =>
            ReviewDetailsRouteArgs(reviewId: pathParams.getString('reviewId')),
      );
      return _i64.WrappedRoute(
        child: _i42.ReviewDetailsScreen(key: args.key, reviewId: args.reviewId),
      );
    },
  );
}

class ReviewDetailsRouteArgs {
  const ReviewDetailsRouteArgs({this.key, required this.reviewId});

  final _i65.Key? key;

  final String reviewId;

  @override
  String toString() {
    return 'ReviewDetailsRouteArgs{key: $key, reviewId: $reviewId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReviewDetailsRouteArgs) return false;
    return key == other.key && reviewId == other.reviewId;
  }

  @override
  int get hashCode => key.hashCode ^ reviewId.hashCode;
}

/// generated route for
/// [_i43.ReviewsScreen]
class ReviewsRoute extends _i64.PageRouteInfo<ReviewsRouteArgs> {
  ReviewsRoute({
    _i65.Key? key,
    String? storeId,
    String? storeName,
    String? storeAddress,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ReviewsRoute.name,
         args: ReviewsRouteArgs(
           key: key,
           storeId: storeId,
           storeName: storeName,
           storeAddress: storeAddress,
         ),
         rawQueryParams: {
           'storeId': storeId,
           'storeName': storeName,
           'storeAddress': storeAddress,
         },
         initialChildren: children,
       );

  static const String name = 'ReviewsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<ReviewsRouteArgs>(
        orElse: () => ReviewsRouteArgs(
          storeId: queryParams.optString('storeId'),
          storeName: queryParams.optString('storeName'),
          storeAddress: queryParams.optString('storeAddress'),
        ),
      );
      return _i64.WrappedRoute(
        child: _i43.ReviewsScreen(
          key: args.key,
          storeId: args.storeId,
          storeName: args.storeName,
          storeAddress: args.storeAddress,
        ),
      );
    },
  );
}

class ReviewsRouteArgs {
  const ReviewsRouteArgs({
    this.key,
    this.storeId,
    this.storeName,
    this.storeAddress,
  });

  final _i65.Key? key;

  final String? storeId;

  final String? storeName;

  final String? storeAddress;

  @override
  String toString() {
    return 'ReviewsRouteArgs{key: $key, storeId: $storeId, storeName: $storeName, storeAddress: $storeAddress}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReviewsRouteArgs) return false;
    return key == other.key &&
        storeId == other.storeId &&
        storeName == other.storeName &&
        storeAddress == other.storeAddress;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      storeId.hashCode ^
      storeName.hashCode ^
      storeAddress.hashCode;
}

/// generated route for
/// [_i44.ScanCartScreen]
class ScanCartRoute extends _i64.PageRouteInfo<ScanCartRouteArgs> {
  ScanCartRoute({
    _i65.Key? key,
    _i66.Store? store,
    String? fridgeId,
    bool restoreCart = false,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ScanCartRoute.name,
         args: ScanCartRouteArgs(
           key: key,
           store: store,
           fridgeId: fridgeId,
           restoreCart: restoreCart,
         ),
         initialChildren: children,
       );

  static const String name = 'ScanCartRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScanCartRouteArgs>(
        orElse: () => const ScanCartRouteArgs(),
      );
      return _i44.ScanCartScreen(
        key: args.key,
        store: args.store,
        fridgeId: args.fridgeId,
        restoreCart: args.restoreCart,
      );
    },
  );
}

class ScanCartRouteArgs {
  const ScanCartRouteArgs({
    this.key,
    this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final _i65.Key? key;

  final _i66.Store? store;

  final String? fridgeId;

  final bool restoreCart;

  @override
  String toString() {
    return 'ScanCartRouteArgs{key: $key, store: $store, fridgeId: $fridgeId, restoreCart: $restoreCart}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ScanCartRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        restoreCart == other.restoreCart;
  }

  @override
  int get hashCode =>
      key.hashCode ^ store.hashCode ^ fridgeId.hashCode ^ restoreCart.hashCode;
}

/// generated route for
/// [_i45.ScanFridgeScreen]
class ScanFridgeRoute extends _i64.PageRouteInfo<void> {
  const ScanFridgeRoute({List<_i64.PageRouteInfo>? children})
    : super(ScanFridgeRoute.name, initialChildren: children);

  static const String name = 'ScanFridgeRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i45.ScanFridgeScreen();
    },
  );
}

/// generated route for
/// [_i46.ScanProductScreen]
class ScanProductRoute extends _i64.PageRouteInfo<ScanProductRouteArgs> {
  ScanProductRoute({
    _i65.Key? key,
    required _i65.VoidCallback onPressedNext,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         ScanProductRoute.name,
         args: ScanProductRouteArgs(key: key, onPressedNext: onPressedNext),
         initialChildren: children,
       );

  static const String name = 'ScanProductRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScanProductRouteArgs>();
      return _i46.ScanProductScreen(
        key: args.key,
        onPressedNext: args.onPressedNext,
      );
    },
  );
}

class ScanProductRouteArgs {
  const ScanProductRouteArgs({this.key, required this.onPressedNext});

  final _i65.Key? key;

  final _i65.VoidCallback onPressedNext;

  @override
  String toString() {
    return 'ScanProductRouteArgs{key: $key, onPressedNext: $onPressedNext}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ScanProductRouteArgs) return false;
    return key == other.key && onPressedNext == other.onPressedNext;
  }

  @override
  int get hashCode => key.hashCode ^ onPressedNext.hashCode;
}

/// generated route for
/// [_i47.SendFeedBackPopup]
class SendFeedBackPopup extends _i64.PageRouteInfo<SendFeedBackPopupArgs> {
  SendFeedBackPopup({
    _i65.Key? key,
    _i65.VoidCallback? onPayment,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         SendFeedBackPopup.name,
         args: SendFeedBackPopupArgs(key: key, onPayment: onPayment),
         initialChildren: children,
       );

  static const String name = 'SendFeedBackPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendFeedBackPopupArgs>(
        orElse: () => const SendFeedBackPopupArgs(),
      );
      return _i64.WrappedRoute(
        child: _i47.SendFeedBackPopup(key: args.key, onPayment: args.onPayment),
      );
    },
  );
}

class SendFeedBackPopupArgs {
  const SendFeedBackPopupArgs({this.key, this.onPayment});

  final _i65.Key? key;

  final _i65.VoidCallback? onPayment;

  @override
  String toString() {
    return 'SendFeedBackPopupArgs{key: $key, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SendFeedBackPopupArgs) return false;
    return key == other.key && onPayment == other.onPayment;
  }

  @override
  int get hashCode => key.hashCode ^ onPayment.hashCode;
}

/// generated route for
/// [_i48.SplashErrorScreen]
class SplashErrorRoute extends _i64.PageRouteInfo<void> {
  const SplashErrorRoute({List<_i64.PageRouteInfo>? children})
    : super(SplashErrorRoute.name, initialChildren: children);

  static const String name = 'SplashErrorRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i48.SplashErrorScreen();
    },
  );
}

/// generated route for
/// [_i49.SplashLoadingScreen]
class SplashLoadingRoute extends _i64.PageRouteInfo<void> {
  const SplashLoadingRoute({List<_i64.PageRouteInfo>? children})
    : super(SplashLoadingRoute.name, initialChildren: children);

  static const String name = 'SplashLoadingRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i49.SplashLoadingScreen();
    },
  );
}

/// generated route for
/// [_i50.SplashScreen]
class SplashRoute extends _i64.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i65.Key? key,
    void Function(String?)? onLoad,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onLoad: onLoad),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i64.WrappedRoute(
        child: _i50.SplashScreen(key: args.key, onLoad: args.onLoad),
      );
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onLoad});

  final _i65.Key? key;

  final void Function(String?)? onLoad;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onLoad: $onLoad}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SplashRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i51.SplashUpdateScreen]
class SplashUpdateRoute extends _i64.PageRouteInfo<void> {
  const SplashUpdateRoute({List<_i64.PageRouteInfo>? children})
    : super(SplashUpdateRoute.name, initialChildren: children);

  static const String name = 'SplashUpdateRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i51.SplashUpdateScreen();
    },
  );
}

/// generated route for
/// [_i52.StartScreen]
class StartRoute extends _i64.PageRouteInfo<StartRouteArgs> {
  StartRoute({
    _i65.Key? key,
    bool canSkipAuth = true,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         StartRoute.name,
         args: StartRouteArgs(key: key, canSkipAuth: canSkipAuth),
         initialChildren: children,
       );

  static const String name = 'StartRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StartRouteArgs>(
        orElse: () => const StartRouteArgs(),
      );
      return _i52.StartScreen(key: args.key, canSkipAuth: args.canSkipAuth);
    },
  );
}

class StartRouteArgs {
  const StartRouteArgs({this.key, this.canSkipAuth = true});

  final _i65.Key? key;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'StartRouteArgs{key: $key, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StartRouteArgs) return false;
    return key == other.key && canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i53.SupportChatScreen]
class SupportChatRoute extends _i64.PageRouteInfo<void> {
  const SupportChatRoute({List<_i64.PageRouteInfo>? children})
    : super(SupportChatRoute.name, initialChildren: children);

  static const String name = 'SupportChatRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i53.SupportChatScreen();
    },
  );
}

/// generated route for
/// [_i54.UnitEventsScreen]
class UnitEventsRoute extends _i64.PageRouteInfo<UnitEventsRouteArgs> {
  UnitEventsRoute({
    _i65.Key? key,
    required String unitId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         UnitEventsRoute.name,
         args: UnitEventsRouteArgs(key: key, unitId: unitId),
         rawPathParams: {'unitId': unitId},
         initialChildren: children,
       );

  static const String name = 'UnitEventsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UnitEventsRouteArgs>(
        orElse: () =>
            UnitEventsRouteArgs(unitId: pathParams.getString('unitId')),
      );
      return _i64.WrappedRoute(
        child: _i54.UnitEventsScreen(key: args.key, unitId: args.unitId),
      );
    },
  );
}

class UnitEventsRouteArgs {
  const UnitEventsRouteArgs({this.key, required this.unitId});

  final _i65.Key? key;

  final String unitId;

  @override
  String toString() {
    return 'UnitEventsRouteArgs{key: $key, unitId: $unitId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UnitEventsRouteArgs) return false;
    return key == other.key && unitId == other.unitId;
  }

  @override
  int get hashCode => key.hashCode ^ unitId.hashCode;
}

/// generated route for
/// [_i55.UnitTempScreen]
class UnitTempRoute extends _i64.PageRouteInfo<UnitTempRouteArgs> {
  UnitTempRoute({
    _i65.Key? key,
    required String unitId,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         UnitTempRoute.name,
         args: UnitTempRouteArgs(key: key, unitId: unitId),
         rawPathParams: {'unitId': unitId},
         initialChildren: children,
       );

  static const String name = 'UnitTempRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UnitTempRouteArgs>(
        orElse: () => UnitTempRouteArgs(unitId: pathParams.getString('unitId')),
      );
      return _i64.WrappedRoute(
        child: _i55.UnitTempScreen(key: args.key, unitId: args.unitId),
      );
    },
  );
}

class UnitTempRouteArgs {
  const UnitTempRouteArgs({this.key, required this.unitId});

  final _i65.Key? key;

  final String unitId;

  @override
  String toString() {
    return 'UnitTempRouteArgs{key: $key, unitId: $unitId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UnitTempRouteArgs) return false;
    return key == other.key && unitId == other.unitId;
  }

  @override
  int get hashCode => key.hashCode ^ unitId.hashCode;
}

/// generated route for
/// [_i56.UserBannedPopup]
class UserBannedPopup extends _i64.PageRouteInfo<void> {
  const UserBannedPopup({List<_i64.PageRouteInfo>? children})
    : super(UserBannedPopup.name, initialChildren: children);

  static const String name = 'UserBannedPopup';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i56.UserBannedPopup());
    },
  );
}

/// generated route for
/// [_i57.UserDataScreen]
class UserDataRoute extends _i64.PageRouteInfo<void> {
  const UserDataRoute({List<_i64.PageRouteInfo>? children})
    : super(UserDataRoute.name, initialChildren: children);

  static const String name = 'UserDataRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i57.UserDataScreen());
    },
  );
}

/// generated route for
/// [_i58.UserProfileScreen]
class UserProfileRoute extends _i64.PageRouteInfo<void> {
  const UserProfileRoute({List<_i64.PageRouteInfo>? children})
    : super(UserProfileRoute.name, initialChildren: children);

  static const String name = 'UserProfileRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i58.UserProfileScreen());
    },
  );
}

/// generated route for
/// [_i59.VendistaAuthScreen]
class VendistaAuthRoute extends _i64.PageRouteInfo<void> {
  const VendistaAuthRoute({List<_i64.PageRouteInfo>? children})
    : super(VendistaAuthRoute.name, initialChildren: children);

  static const String name = 'VendistaAuthRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i59.VendistaAuthScreen();
    },
  );
}

/// generated route for
/// [_i60.VendistaChooseIdScreen]
class VendistaChooseIdRoute extends _i64.PageRouteInfo<void> {
  const VendistaChooseIdRoute({List<_i64.PageRouteInfo>? children})
    : super(VendistaChooseIdRoute.name, initialChildren: children);

  static const String name = 'VendistaChooseIdRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return const _i60.VendistaChooseIdScreen();
    },
  );
}

/// generated route for
/// [_i61.VendistaRequestDetailsScreen]
class VendistaRequestDetailsRoute
    extends _i64.PageRouteInfo<VendistaRequestDetailsRouteArgs> {
  VendistaRequestDetailsRoute({
    _i68.Key? key,
    required _i74.VendistaRequest request,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         VendistaRequestDetailsRoute.name,
         args: VendistaRequestDetailsRouteArgs(key: key, request: request),
         initialChildren: children,
       );

  static const String name = 'VendistaRequestDetailsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendistaRequestDetailsRouteArgs>();
      return _i64.WrappedRoute(
        child: _i61.VendistaRequestDetailsScreen(
          key: args.key,
          request: args.request,
        ),
      );
    },
  );
}

class VendistaRequestDetailsRouteArgs {
  const VendistaRequestDetailsRouteArgs({this.key, required this.request});

  final _i68.Key? key;

  final _i74.VendistaRequest request;

  @override
  String toString() {
    return 'VendistaRequestDetailsRouteArgs{key: $key, request: $request}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! VendistaRequestDetailsRouteArgs) return false;
    return key == other.key && request == other.request;
  }

  @override
  int get hashCode => key.hashCode ^ request.hashCode;
}

/// generated route for
/// [_i62.VendistaRequestsScreen]
class VendistaRequestsRoute extends _i64.PageRouteInfo<void> {
  const VendistaRequestsRoute({List<_i64.PageRouteInfo>? children})
    : super(VendistaRequestsRoute.name, initialChildren: children);

  static const String name = 'VendistaRequestsRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      return _i64.WrappedRoute(child: const _i62.VendistaRequestsScreen());
    },
  );
}

/// generated route for
/// [_i63.WebViewPaymentScreen]
class WebViewPaymentRoute extends _i64.PageRouteInfo<WebViewPaymentRouteArgs> {
  WebViewPaymentRoute({
    _i69.Key? key,
    required String url,
    _i71.InAppWebViewSettings? webViewSettings,
    List<_i64.PageRouteInfo>? children,
  }) : super(
         WebViewPaymentRoute.name,
         args: WebViewPaymentRouteArgs(
           key: key,
           url: url,
           webViewSettings: webViewSettings,
         ),
         initialChildren: children,
       );

  static const String name = 'WebViewPaymentRoute';

  static _i64.PageInfo page = _i64.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewPaymentRouteArgs>();
      return _i64.WrappedRoute(
        child: _i63.WebViewPaymentScreen(
          key: args.key,
          url: args.url,
          webViewSettings: args.webViewSettings,
        ),
      );
    },
  );
}

class WebViewPaymentRouteArgs {
  const WebViewPaymentRouteArgs({
    this.key,
    required this.url,
    this.webViewSettings,
  });

  final _i69.Key? key;

  final String url;

  final _i71.InAppWebViewSettings? webViewSettings;

  @override
  String toString() {
    return 'WebViewPaymentRouteArgs{key: $key, url: $url, webViewSettings: $webViewSettings}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WebViewPaymentRouteArgs) return false;
    return key == other.key &&
        url == other.url &&
        webViewSettings == other.webViewSettings;
  }

  @override
  int get hashCode => key.hashCode ^ url.hashCode ^ webViewSettings.hashCode;
}

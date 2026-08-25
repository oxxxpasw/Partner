import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';
import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/customer_purchase_repository.dart';
import 'package:sosedifedi/data/repository/order_repository.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/data/services/input_phone_service.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/payment/payment.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:uuid/uuid.dart';

abstract class OrderInteractor {
  Stream<UserData?> get userDataStream;

  Future<DefaultResponse<OrderModel>> createOrder(OrderModel order);

  Future<DefaultResponse<OrderModel>> initOrder({
    PaymentType? paymentType,
    required Store store,
    bool isCoffee,
    OrderCreationType creationType,
  });

  ///Должен вернуть [true], если платеж прошел успешно.
  ///В ином случае должен вернуть [false].
  Future<DefaultResponse<bool>> checkPayment(String paymentId);

  Future<DefaultResponse<void>> rollbackPurchase(String? id);

  Future<void> updateUserData(UserData userData);

  Future<DefaultResponse<PaymentType?>> getDefaultPaymentType(String storeId);

  Future<DefaultResponse<void>> closeWorkShift(String storeId);
}

@Singleton(as: OrderInteractor)
class OrderInteractorImpl implements OrderInteractor {
  OrderInteractorImpl({
    required this.authRepository,
    required this.orderRepository,
    required this.inputPhoneService,
    required this.cartRepository,
    required this.paymentRepository,
    required this.remoteConfigRepository,
    required this.customerApiRepository,
    required this.appEnvironment,
  });

  @protected
  final AuthRepository authRepository;

  @protected
  final RemoteConfigRepository remoteConfigRepository;

  @protected
  final OrderRepository orderRepository;

  @protected
  final InputPhoneService inputPhoneService;

  @protected
  final CartRepository cartRepository;

  @protected
  final PaymentRepository paymentRepository;

  @protected
  final CustomerApiPurchaseRepository customerApiRepository;

  @protected
  final AppEnvironment appEnvironment;

  @override
  Stream<UserData?> get userDataStream => authRepository.userDataStream;

  @override
  Future<DefaultResponse<OrderModel>> createOrder(
    OrderModel order,
  ) async {
    try {
      final token = await authRepository.token;
      if (token == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }

      final response = await orderRepository.createOrder2(
        order: order,
        token: token,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(order);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<DefaultResponse<OrderModel>> _sendWithCustomerApi(
    OrderModel order,
    String token,
    String successUrl,
    String failureUrl,
  ) async {
    assert(order.purchase != null);
    final response =
        await orderRepository.createOrder(order: order, token: token);
    if (response.hasError) {
      await rollbackPurchase(order.purchase?.purchase.id);
      return ApiResponse.error(response.error);
    }
    order = order.copyWith(
      externalId: response.result.orderId,
      publicId: response.result.publicId,
    );
    if (order.paymentType != null) {
      final paymentResponse = await processPayment(
        order,
        successUrl,
        failureUrl,
        order.store.id,
        token,
      );
      if (paymentResponse.hasError) {
        return ApiResponse.error(paymentResponse.error);
      }
      order = order.copyWith(
        payment: paymentResponse.result,
      );
    }
    return ApiResponse.success(order);
  }

  Future<DefaultResponse<OrderModel>> _sendWithoutCustomerApi(
    OrderModel order,
    String token,
    String successUrl,
    String failureUrl,
  ) async {
    final response =
        await orderRepository.createOrder(order: order, token: token);

    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    order = order.copyWith(
      externalId: response.result.orderId,
      publicId: response.result.publicId,
    );
    if (order.paymentType != null) {
      final paymentResponse = await processPayment(
        order,
        successUrl,
        failureUrl,
        order.store.id,
        token,
      );
      if (paymentResponse.hasError) {
        return ApiResponse.error(paymentResponse.error);
      }
      order = order.copyWith(
        payment: paymentResponse.result,
      );
    }
    return ApiResponse.success(order);
  }

  @visibleForTesting
  @protected
  Future<DefaultResponse<Payment>> processPayment(
    OrderModel order,
    String successUrl,
    String failureUrl,
    String storeId,
    String token,
  ) {
    assert(order.externalId != null);
    return paymentRepository.processOrderPayment(
      order: order,
      successUrl: transformUrl(successUrl, order),
      failureUrl: transformUrl(failureUrl, order),
      token: token,
    );
  }

  @visibleForTesting
  @protected
  String transformUrl(String url, OrderModel order) {
    assert(order.externalId != null);
    final uri = Uri.parse(url);
    return uri.replace(
      queryParameters: {
        ...uri.queryParameters,
        'address': order.store.address,
        'order': order.externalId,
        'price': order.finalSum.toStringAsFixed(2),
        'currency-symbol': order.currencySymbol,
        'date': order.date.toIso8601String(),
      },
    ).toString();
  }

  @override
  Future<DefaultResponse<void>> rollbackPurchase(String? id) async {
    try {
      if (id != null) {
        await customerApiRepository.rollbackPurchase(purchaseId: id);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<OrderModel>> initOrder({
    PaymentType? paymentType,
    required Store store,
    bool isCoffee = false,
    OrderCreationType creationType = OrderCreationType.order,
  }) async {
    try {
      final user = authRepository.authData?.user;
      if (user == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final userDataResponse = await authRepository.getUserData();
      final result = await Future.wait([
        cartRepository.getCart(refresh: true),
        authRepository.getUser(),
      ]);
      final cart = result[0] as Cart;
      final orderId = const Uuid().v4();

      var order = OrderModel(
        id: orderId,
        store: store,
        cart: cart,
        phone: user.mobileNumber,
        date: DateTime.now(),
        paymentType: paymentType,
        userData: userDataResponse.isSuccess ? userDataResponse.result : null,
        purchase: cart.purchase,
        isCoffee: isCoffee,
        deviceId: cart.fridgeId ?? cart.coffeeMachineId,
        creationType: creationType,
      );

      return ApiResponse.success(order);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<bool>> checkPayment(String paymentId) async {
    try {
      return await retry(
        () async {
          final response = await paymentRepository.getPaymentStatus(paymentId);
          if (response.hasError) {
            return ApiResponse.error(response.error);
          }
          final status = response.result?.status;
          if (status == null) {
            throw Exception();
          }
          switch (status) {
            case PaymentStatus.newPayment:
            case PaymentStatus.created:
            case PaymentStatus.internalError:
            case PaymentStatus.processing:
            case PaymentStatus.unknown:
              throw Exception();
            case PaymentStatus.canceled:
            case PaymentStatus.overdue:
              return const ApiResponse.success(true);
            case PaymentStatus.paid:
            case PaymentStatus.notified:
              return const ApiResponse.success(false);
          }
        },
        maxAttempts: 12,
        retryIf: (_) => true,
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> updateUserData(UserData userData) async {
    try {
      final response = await authRepository.updateUserData(userData);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<PaymentType?>> getDefaultPaymentType(
    String storeId,
  ) async {
    try {
      final paymentResponse = await paymentRepository.getPaymentTypes(
        systemId: storeId,
      );
      if (paymentResponse.hasError) {
        return ApiResponse.error(paymentResponse.error);
      }
      final payments = paymentResponse.result;

      if (payments.isEmpty) {
        return const ApiResponse.error(
          CommonResponseError.undefinedError('No payment methods found'),
        );
      }
      if (payments.length == 1) {
        return ApiResponse.success(payments.first);
      }

      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> closeWorkShift(String storeId) async {
    try {
      final user = authRepository.authData?.user;
      if (user == null) {
        return const ApiResponse.error(CommonResponseError.unAuthorized());
      }
      final response = await orderRepository.closeWorkShift(
        token: user.token,
        storeId: storeId,
      );

      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}

@injectable
class OrderInteractorCoffeeImpl extends OrderInteractorImpl {
  OrderInteractorCoffeeImpl({
    required super.authRepository,
    required super.orderRepository,
    required super.inputPhoneService,
    required CartRepositoryCoffeeImpl cartRepository,
    required super.paymentRepository,
    required super.remoteConfigRepository,
    required super.customerApiRepository,
    required super.appEnvironment,
  }) : super(cartRepository: cartRepository);
}

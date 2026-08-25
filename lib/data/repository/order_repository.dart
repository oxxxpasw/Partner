import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/models/create_order_response/create_order_response.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/api1c_service.dart';
import 'package:sosedifedi/data/services/order_service.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class OrderRepository {
  const OrderRepository();

  Future<DefaultResponse<CreateOrderResponse>> createOrder({
    required OrderModel order,
    required String token,
  });

  Future<DefaultResponse<void>> createOrder2({
    required OrderModel order,
    required String token,
  });

  Future<DefaultResponse<List<AcceptedOrder>>> orderList({
    required String token,
  });

  Future<DefaultResponse<AcceptedOrder>> orderById({
    required String token,
    required String id,
  });

  Future<DefaultResponse<void>> cancelOrder({
    required String token,
    required String id,
  });

  Future<DefaultResponse<void>> closeWorkShift({
    required String token,
    required String storeId,
  });
}

@Singleton(as: OrderRepository)
class OrderRepositoryImpl extends OrderRepository {
  const OrderRepositoryImpl({
    required this.orderService,
    required this.orderModelMapper,
    required this.analystService,
    required this.api1cService,
  });

  @protected
  final OrderService orderService;
  @protected
  final OrderModelMapper orderModelMapper;
  @protected
  final AnalystService analystService;
  @protected
  final Api1cService api1cService;

  @override
  Future<DefaultResponse<CreateOrderResponse>> createOrder({
    required OrderModel order,
    required String token,
  }) async {
    final orderResponse = orderModelMapper.mapToOrderResponse(order, token);
    final response =
        await orderService.createOrder(token: token, order: orderResponse);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(response.result);
  }

  @override
  Future<DefaultResponse<void>> createOrder2({
    required OrderModel order,
    required String token,
  }) async {
    return switch (order.creationType) {
      OrderCreationType.order => orderService.createOrder(
          token: token,
          order: orderModelMapper.mapToOrderResponse(order, token),
        ),
      OrderCreationType.inventarization => api1cService.inventarization(
          token: token,
          order: orderModelMapper.mapToInventarizationResponse(order, token),
        ),
      OrderCreationType.discarding => api1cService.discarding(
          token: token,
          order: orderModelMapper.mapToInventarizationResponse(order, token),
        ),
    };
  }

  @override
  Future<DefaultResponse<AcceptedOrder>> orderById({
    required String token,
    required String id,
  }) async {
    final response = await orderService.orderById(token: token, id: id);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(
      orderModelMapper.mapFromAcceptedOrderResponse(response.result),
    );
  }

  @override
  Future<DefaultResponse<List<AcceptedOrder>>> orderList({
    required String token,
  }) async {
    final response = await orderService.orderList(token: token);
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(
      response.result
          .map((e) => orderModelMapper.mapFromAcceptedOrderResponse(e))
          .toList(),
    );
  }

  @override
  Future<DefaultResponse<void>> cancelOrder({
    required String token,
    required String id,
  }) =>
      orderService.cancelOrder(token: token, id: id);

  @override
  Future<DefaultResponse<void>> closeWorkShift({
    required String token,
    required String storeId,
  }) =>
      api1cService.closeWorkShift(
        token: token,
        storeId: storeId,
      );
}

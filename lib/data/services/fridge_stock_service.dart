import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/fridge_stock_response/fridge_stock_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

/// Склад холодильника: REST /api/v1/partner/fridge-stock (наш бэкенд, не 1С).
abstract class FridgeStockService {
  Future<DefaultResponse<FridgeStockResponse>> getStock(
    String deviceId,
    String token,
  );

  Future<DefaultResponse<FridgeStockScanResult>> scan(
    String deviceId,
    String token, {
    required String barcode,
    required double quantity,
    String? name,
    double? price,
  });

  Future<DefaultResponse<void>> inventory(
    String deviceId,
    String token, {
    required List<Map<String, dynamic>> items,
  });

  Future<DefaultResponse<void>> writeoff(
    String deviceId,
    String token, {
    required List<Map<String, dynamic>> items,
    String note = 'Списание',
  });

  Future<DefaultResponse<List<FridgeStockMovementDto>>>
      history(String deviceId, String token);
}

@Singleton(as: FridgeStockService)
class FridgeStockServiceImpl implements FridgeStockService {
  FridgeStockServiceImpl({
    @Named(InjectableNames.partnerApiClient) required this.dio,
    @Named(InjectableNames.partnerApiClient) required this.handler,
  });

  @protected
  final Dio dio;

  @protected
  final DioErrorHandler<DefaultApiError> handler;

  Options _auth(String token) =>
      Options(headers: {'Authorization': 'Bearer $token'});

  @override
  Future<DefaultResponse<FridgeStockResponse>> getStock(
    String deviceId,
    String token,
  ) async {
    try {
      final response = await handler.processRequest<Response>(
        () => dio.get('partner/fridge-stock/$deviceId', options: _auth(token)),
        true,
      );
      if (response.hasError) return ApiResponse.error(response.error);
      return ApiResponse.success(
        FridgeStockResponse.fromJson(response.result.data as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  /// Приём штрихкода. Без generic-хендлера: 404 «need_name» — не ошибка,
  /// а рабочий ответ (новый штрихкод), который ретраить нельзя.
  @override
  Future<DefaultResponse<FridgeStockScanResult>> scan(
    String deviceId,
    String token, {
    required String barcode,
    required double quantity,
    String? name,
    double? price,
  }) async {
    try {
      final response = await dio.post(
        'partner/fridge-stock/$deviceId/scan',
        data: {
          'barcode': barcode,
          'quantity': quantity,
          if (name != null && name.isNotEmpty) 'name': name,
          if (price != null) 'price': price,
        },
        options: _auth(token),
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return ApiResponse.success(
          FridgeStockScanResult.fromJson(data, fallbackBarcode: barcode),
        );
      }
      return ApiResponse.success(
        FridgeStockScanResult(
          needName: false,
          created: false,
          barcode: barcode,
        ),
      );
    } on DioException catch (e) {
      final body = e.response?.data;
      if (e.response?.statusCode == 404 &&
          body is Map && body['need_name'] == true) {
        return ApiResponse.success(
          FridgeStockScanResult(
            needName: true,
            created: false,
            barcode: (body['barcode'] as String?) ?? barcode,
          ),
        );
      }
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> inventory(
    String deviceId,
    String token, {
    required List<Map<String, dynamic>> items,
  }) async {
    try {
      final response = await handler.processRequest<Response>(
        () => dio.post(
          'partner/fridge-stock/$deviceId/inventory',
          data: {'items': items},
          options: _auth(token),
        ),
        true,
      );
      if (response.hasError) return ApiResponse.error(response.error);
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<void>> writeoff(
    String deviceId,
    String token, {
    required List<Map<String, dynamic>> items,
    String note = 'Списание',
  }) async {
    try {
      final response = await handler.processRequest<Response>(
        () => dio.post(
          'partner/fridge-stock/$deviceId/writeoff',
          data: {'items': items, 'note': note},
          options: _auth(token),
        ),
        true,
      );
      if (response.hasError) return ApiResponse.error(response.error);
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<FridgeStockMovementDto>>>
      history(String deviceId, String token) async {
    try {
      final response = await handler.processRequest<Response>(
        () => dio.get('partner/fridge-stock/$deviceId/history',
            options: _auth(token)),
        true,
      );
      if (response.hasError) return ApiResponse.error(response.error);
      final data = response.result.data as Map<String, dynamic>;
      final list = (data['movements'] as List? ?? [])
          .map((e) => FridgeStockMovementDto.fromJson(e as Map<String, dynamic>))
          .toList();
      return ApiResponse.success(list);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}

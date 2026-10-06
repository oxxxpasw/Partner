import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/fridge_stock_response/fridge_stock_response.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/fridge_stock_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class FridgeStockRepository {
  Future<DefaultResponse<FridgeStockResponse>> getStock(String deviceId);
  Future<DefaultResponse<FridgeStockScanResult>> scan(
    String deviceId, {
    required String barcode,
    required double quantity,
    String? name,
    double? price,
  });
  Future<DefaultResponse<void>> inventory(
    String deviceId, {
    required List<Map<String, dynamic>> items,
  });
  Future<DefaultResponse<void>> writeoff(
    String deviceId, {
    required List<Map<String, dynamic>> items,
    String note = 'Списание',
  });
  Future<DefaultResponse<List<FridgeStockMovementDto>>> history(
      String deviceId);
}

@Singleton(as: FridgeStockRepository)
class FridgeStockRepositoryImpl implements FridgeStockRepository {
  FridgeStockRepositoryImpl({
    required this.fridgeStockService,
    required this.authRepository,
  });

  @protected
  final FridgeStockService fridgeStockService;

  @protected
  final AuthRepository authRepository;

  String? get _token => authRepository.authData?.user.token;

  @override
  Future<DefaultResponse<FridgeStockResponse>> getStock(String deviceId) {
    final token = _token;
    if (token == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeStockService.getStock(deviceId, token);
  }

  @override
  Future<DefaultResponse<FridgeStockScanResult>> scan(
    String deviceId, {
    required String barcode,
    required double quantity,
    String? name,
    double? price,
  }) {
    final token = _token;
    if (token == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeStockService.scan(
      deviceId,
      token,
      barcode: barcode,
      quantity: quantity,
      name: name,
      price: price,
    );
  }

  @override
  Future<DefaultResponse<void>> inventory(
    String deviceId, {
    required List<Map<String, dynamic>> items,
  }) {
    final token = _token;
    if (token == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeStockService.inventory(deviceId, token, items: items);
  }

  @override
  Future<DefaultResponse<void>> writeoff(
    String deviceId, {
    required List<Map<String, dynamic>> items,
    String note = 'Списание',
  }) {
    final token = _token;
    if (token == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeStockService.writeoff(deviceId, token, items: items, note: note);
  }

  @override
  Future<DefaultResponse<List<FridgeStockMovementDto>>> history(
      String deviceId) {
    final token = _token;
    if (token == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeStockService.history(deviceId, token);
  }
}

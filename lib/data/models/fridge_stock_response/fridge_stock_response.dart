import 'package:freezed_annotation/freezed_annotation.dart';

part 'fridge_stock_response.freezed.dart';
part 'fridge_stock_response.g.dart';

/// Остаток товара на складе холодильника.
@freezed
abstract class FridgeStockItemDto with _$FridgeStockItemDto {
  const factory FridgeStockItemDto({
    required String productId,
    required String name,
    required String barcode,
    @Default(0) double price,
    @Default(0) double quantity,
  }) = _FridgeStockItemDto;

  factory FridgeStockItemDto.fromJson(Map<String, dynamic> json) =>
      _$FridgeStockItemDtoFromJson(json);
}

/// Ответ GET /api/v1/partner/fridge-stock/{device_id}
@freezed
abstract class FridgeStockResponse with _$FridgeStockResponse {
  const factory FridgeStockResponse({
    @JsonKey(name: 'device') required FridgeStockDeviceDto device,
    @JsonKey(name: 'items') @Default([]) List<FridgeStockItemDto> items,
  }) = _FridgeStockResponse;

  factory FridgeStockResponse.fromJson(Map<String, dynamic> json) =>
      _$FridgeStockResponseFromJson(json);
}

@freezed
abstract class FridgeStockDeviceDto with _$FridgeStockDeviceDto {
  const factory FridgeStockDeviceDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'mqtt_id') String? mqttId,
    @JsonKey(name: 'store_id') String? storeId,
    @JsonKey(name: 'store_name') String? storeName,
  }) = _FridgeStockDeviceDto;

  factory FridgeStockDeviceDto.fromJson(Map<String, dynamic> json) =>
      _$FridgeStockDeviceDtoFromJson(json);
}

/// Движение по складу (история).
@freezed
abstract class FridgeStockMovementDto with _$FridgeStockMovementDto {
  const factory FridgeStockMovementDto({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'kind') @Default('inventory') String kind,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'quantity') @Default(0) double quantity,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _FridgeStockMovementDto;

  factory FridgeStockMovementDto.fromJson(Map<String, dynamic> json) =>
      _$FridgeStockMovementDtoFromJson(json);
}

/// Результат приёма штрихкода: товар создан, остаток пополнен,
/// либо нужен ввод названия (новый штрихкод).
class FridgeStockScanResult {
  const FridgeStockScanResult({
    required this.needName,
    required this.created,
    required this.barcode,
    this.productName,
    this.quantity,
  });

  final bool needName;
  final bool created;
  final String barcode;
  final String? productName;
  final double? quantity;

  factory FridgeStockScanResult.fromJson(
    Map<String, dynamic> json, {
    String? fallbackBarcode,
  }) {
    final product = json['product'] as Map<String, dynamic>?;
    return FridgeStockScanResult(
      needName: json['need_name'] == true,
      created: json['created'] == true,
      barcode: (json['barcode'] as String?) ?? fallbackBarcode ?? '',
      productName: product?['name'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
    );
  }
}

part of 'fridge_stock_cubit.dart';

@freezed
abstract class FridgeStockState with _$FridgeStockState {
  const factory FridgeStockState({
    @Default(FridgeStockStatus.init) FridgeStockStatus status,
    FridgeStockDeviceDto? device,
    @Default([]) List<FridgeStockItemDto> items,
    @Default(false) bool busy,
  }) = _FridgeStockState;

  const FridgeStockState._();

  double totalQuantity(String productId) {
    for (final item in items) {
      if (item.productId == productId) return item.quantity;
    }
    return 0;
  }
}

enum FridgeStockStatus {
  init,
  loading,
  ready,
}

@freezed
sealed class FridgeStockSr with _$FridgeStockSr {
  const factory FridgeStockSr.error(String message) = FridgeStockErrorSr;

  const factory FridgeStockSr.info(String message) = FridgeStockInfoSr;

  const factory FridgeStockSr.needName(String barcode) = FridgeStockNeedNameSr;
}

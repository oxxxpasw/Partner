import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/fridge_stock_response/fridge_stock_response.dart';
import 'package:sosedifedi/data/repository/fridge_stock_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'fridge_stock_state.dart';
part 'fridge_stock_cubit.freezed.dart';

/// Склад конкретного холодильника: приём по штрихкоду, остатки,
/// инвентаризация, списание. Всё в нашем бэкенде (fridge_stock), не в 1С.
@injectable
class FridgeStockCubit extends SrCubit<FridgeStockState, FridgeStockSr> {
  FridgeStockCubit({
    required this.repository,
    @factoryParam required this.deviceId,
  }) : super(const FridgeStockState());

  @protected
  final FridgeStockRepository repository;
  @protected
  final String deviceId;

  Future<void> loadData() async {
    emit(state.copyWith(status: FridgeStockStatus.loading));

    final response = await repository.getStock(deviceId);
    if (response.hasError) {
      emit(state.copyWith(status: FridgeStockStatus.init));
      addSr(FridgeStockSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(
      state.copyWith(
        status: FridgeStockStatus.ready,
        device: response.result.device,
        items: response.result.items,
      ),
    );
  }

  /// Скан/ручной ввод штрихкода: принять [quantity] шт товара.
  /// Если штрихкод новый — эмитим needName, экран спросит название и цену.
  Future<void> acceptBarcode(
    String barcode, {
    double quantity = 1,
    String? name,
    double? price,
  }) async {
    if (state.busy) return;
    emit(state.copyWith(busy: true));
    final response = await repository.scan(
      deviceId,
      barcode: barcode,
      quantity: quantity,
      name: name,
      price: price,
    );
    if (response.hasError) {
      emit(state.copyWith(busy: false));
      addSr(FridgeStockSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    final result = response.result;
    if (result.needName) {
      emit(state.copyWith(busy: false));
      addSr(FridgeStockSr.needName(result.barcode));
      return;
    }
    emit(state.copyWith(busy: false));
    await loadData();
    addSr(FridgeStockSr.info(
      result.created
          ? 'Новый товар «${result.productName}» добавлен (${result.quantity ?? quantity} шт)'
          : 'Принято: ${result.productName ?? result.barcode} — ${result.quantity ?? quantity} шт',
    ));
  }

  /// Изменить остаток позиции на [delta] шт (кнопки +/-).
  Future<void> changeQuantity(String productId, double delta) async {
    if (state.busy) return;
    final current = state.totalQuantity(productId);
    final next = (current + delta) < 0 ? 0 : current + delta;
    emit(state.copyWith(busy: true));
    final response = await repository.inventory(
      deviceId,
      items: [
        {'product_id': productId, 'quantity': next},
      ],
    );
    if (response.hasError) {
      emit(state.copyWith(busy: false));
      addSr(FridgeStockSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(state.copyWith(busy: false));
    await loadData();
  }

  /// Списание [quantity] шт позиции с причиной.
  Future<void> writeoff(String productId, double quantity, String note) async {
    if (state.busy || quantity <= 0) return;
    emit(state.copyWith(busy: true));
    final response = await repository.writeoff(
      deviceId,
      items: [
        {'product_id': productId, 'quantity': quantity},
      ],
      note: note,
    );
    if (response.hasError) {
      emit(state.copyWith(busy: false));
      addSr(FridgeStockSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(state.copyWith(busy: false));
    await loadData();
    addSr(FridgeStockSr.info('Списано $quantity шт'));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:sosedifedi/data/models/fridge_stock_response/fridge_stock_response.dart';
import 'package:sosedifedi/domain/bloc/fridge_stock_cubit/fridge_stock_cubit.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/qr_scanner/qr_scanner.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messenger.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

/// Склад холодильника: приём товара по штрихкоду (камера или руками),
/// остатки, списание. Данные — наш бэкенд /api/v1/partner/fridge-stock.
@RoutePage()
class FridgeStockScreen extends StatelessWidget implements AutoRouteWrapper {
  const FridgeStockScreen({super.key, @pathParam required this.deviceId});

  final String deviceId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<FridgeStockCubit>(
      create: (context) =>
          GetIt.I.get<FridgeStockCubit>(param1: deviceId)..loadData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SrBlocBuilder<FridgeStockCubit, FridgeStockState, FridgeStockSr>(
      onSR: (context, sr) => switch (sr) {
        FridgeStockErrorSr(:final message) =>
          Messenger.showMessage(context: context, message: message),
        FridgeStockInfoSr(:final message) =>
          Messenger.showMessage(context: context, message: message),
        FridgeStockNeedNameSr() => _showNewProductDialog(context, sr.barcode),
      },
      builder: (context, state) => Scaffold(
        appBar: CustomAppBar(
          title: Text(
            state.device == null
                ? 'Склад холодильника'
                : 'Склад — ${state.device!.name}',
          ),
        ),
        floatingActionButton: state.status == FridgeStockStatus.ready
            ? FloatingActionButton.extended(
                backgroundColor: const Color(0xFF194F2F),
                foregroundColor: Colors.white,
                onPressed: () => _openScanner(context),
                icon: const Icon(Icons.qr_code_scanner),
                label: const Text('Сканировать'),
              )
            : null,
        body: switch (state.status) {
          FridgeStockStatus.init || FridgeStockStatus.loading =>
            const Center(child: CircularProgressIndicator.adaptive()),
          FridgeStockStatus.ready => _FridgeStockView(deviceId: deviceId),
        },
      ),
    );
  }

  void _openScanner(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black,
      builder: (sheetContext) => SizedBox(
        height: MediaQuery.of(sheetContext).size.height * 0.7,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  QrScanner(
                    onDetect: (BarcodeCapture capture) {
                      final raw = capture.barcodes.firstOrNull;
                      if (raw == null || raw.rawValue == null) return;
                      if (raw.format == BarcodeFormat.qrCode) return;
                      Navigator.of(sheetContext).pop();
                      context
                          .read<FridgeStockCubit>()
                          .acceptBarcode(raw.rawValue!, quantity: 1);
                    },
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () => Navigator.of(sheetContext).pop(),
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.of(sheetContext).pop();
                    _showManualBarcodeDialog(context);
                  },
                  icon: const Icon(Icons.keyboard, color: Colors.white),
                  label: const Text(
                    'Ввести штрихкод вручную',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Ручной ввод штрихкода без скана: если товар не найден —
  /// кубит сам попросит заполнить карточку нового товара.
  void _showManualBarcodeDialog(BuildContext context) {
    final barcodeController = TextEditingController();

    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Приём по штрихкоду'),
        content: TextField(
          controller: barcodeController,
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Штрихкод (EAN/GTIN)',
            border: OutlineInputBorder(),
          ),
          onSubmitted: (_) => _submitManualBarcode(
            context,
            dialogContext,
            barcodeController.text,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Отмена'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF194F2F),
            ),
            onPressed: () => _submitManualBarcode(
              context,
              dialogContext,
              barcodeController.text,
            ),
            child: const Text('Принять'),
          ),
        ],
      ),
    );
  }

  void _submitManualBarcode(BuildContext context, BuildContext dialogContext,
      String barcode) {
    final code = barcode.trim();
    if (code.isEmpty) return;
    Navigator.of(dialogContext).pop();
    context.read<FridgeStockCubit>().acceptBarcode(code, quantity: 1);
  }

  void _showNewProductDialog(BuildContext context, String barcode) {
    final nameController = TextEditingController();
    final priceController = TextEditingController();
    final qtyController = TextEditingController(text: '1');

    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Новый товар'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Штрихкод $barcode не найден. Заполните карточку — товар будет создан и появится у покупателей.',
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: nameController,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'Название товара',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: priceController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Цена, BYN',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: qtyController,
                keyboardType: const TextInputType.numberWithOptions(),
                decoration: const InputDecoration(
                  labelText: 'Количество, шт',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Отмена'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF194F2F),
            ),
            onPressed: () {
              final name = nameController.text.trim();
              if (name.isEmpty) return;
              Navigator.of(dialogContext).pop();
              context.read<FridgeStockCubit>().acceptBarcode(
                    barcode,
                    quantity:
                        double.tryParse(qtyController.text.replaceAll(',', '.')) ??
                            1,
                    name: name,
                    price:
                        double.tryParse(priceController.text.replaceAll(',', '.')),
                  );
            },
            child: const Text('Создать'),
          ),
        ],
      ),
    );
  }
}

class _FridgeStockView extends StatelessWidget {
  const _FridgeStockView({required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context) {
    final items = context.select((FridgeStockCubit c) => c.state.items);
    if (items.isEmpty) {
      return const Center(
        child: Text(
          'Склад пуст. Отсканируйте первый товар — он сразу появится в приложении покупателей.',
          textAlign: TextAlign.center,
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: () =>
          context.read<FridgeStockCubit>().loadData().then((_) {}),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
        itemCount: items.length,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final item = items[index];
          return _StockTile(item: item);
        },
      ),
    );
  }
}

class _StockTile extends StatelessWidget {
  const _StockTile({required this.item});

  final FridgeStockItemDto item;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FridgeStockCubit>();
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${item.barcode} · ${item.price} BYN',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF64748B),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => cubit.changeQuantity(item.productId, -1),
            icon: const Icon(Icons.remove_circle_outline),
          ),
          Text(
            '${item.quantity}',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: item.quantity > 0
                  ? const Color(0xFF0F172A)
                  : const Color(0xFFDC2626),
            ),
          ),
          IconButton(
            onPressed: () => cubit.changeQuantity(item.productId, 1),
            icon: const Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () => _writeoffDialog(context, cubit),
            icon: const Icon(Icons.delete_outline, color: Color(0xFFDC2626)),
          ),
        ],
      ),
    );
  }

  void _writeoffDialog(BuildContext context, FridgeStockCubit cubit) {
    final qtyController = TextEditingController();
    final noteController = TextEditingController(text: 'Просрочка');
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Списать «${item.name}»'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: qtyController,
              autofocus: true,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                labelText: 'Количество, шт',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: noteController,
              decoration: const InputDecoration(
                labelText: 'Причина',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Отмена'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              final qty = double.tryParse(
                    qtyController.text.replaceAll(',', '.'),
                  ) ??
                  0;
              if (qty <= 0) return;
              Navigator.of(dialogContext).pop();
              cubit.writeoff(
                item.productId,
                qty,
                noteController.text.trim().isEmpty
                    ? 'Списание'
                    : noteController.text.trim(),
              );
            },
            child: const Text('Списать'),
          ),
        ],
      ),
    );
  }
}

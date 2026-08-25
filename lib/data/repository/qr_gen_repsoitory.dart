import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/services/qr_gen_service.dart';
import 'package:sosedifedi/domain/models/divisions/division_units/division_unit.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

const _kFridgeIdKey = 'fridge-id';
const _kCoffeeMachineIdKey = 'coffee-machine-id';

abstract class QrGenRepository {
  Future<DefaultResponse<void>> generateQrCodeForUnit({
    required DivisionUnit unit,
  });
}

@Singleton(as: QrGenRepository)
class QrGenRepositoryImpl implements QrGenRepository {
  QrGenRepositoryImpl({
    required this.environment,
    required this.qrGenService,
  });

  @protected
  final AppEnvironment environment;

  @protected
  final QrGenService qrGenService;

  @override
  Future<DefaultResponse<void>> generateQrCodeForUnit({
    required DivisionUnit unit,
  }) async {
    var uri = Uri.parse(environment.qrEndpoint);

    uri = uri.replace(
      queryParameters: {
        if (unit.type == DivisionUnitType.fridge) _kFridgeIdKey: unit.unitId,
        if (unit.type == DivisionUnitType.coffeeMachine)
          _kCoffeeMachineIdKey: unit.unitId,
      },
    );

    return qrGenService.shareQr(uri.toString(), name: unit.unitId);
  }
}

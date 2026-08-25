import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sosedifedi/domain/models/divisions/metrics/metric.dart';

part 'division_unit.freezed.dart';

@freezed
abstract class DivisionUnit with _$DivisionUnit {
  const DivisionUnit._();

  const factory DivisionUnit({
    required String unitId,
    required String unitName,
    required bool isOpen,
    required DateTime? start,
    required DateTime? end,
    required DivisionUnitType type,
    required List<Metric> metrics,
    String? address,
    String? lastConnection,
    double? lastTemperature,
  }) = _DivisionUnit;

  bool get isConnected =>
      lastConnection != null && lastConnection!.startsWith('Connected');
}

enum DivisionUnitType {
  fridge,
  coffeeMachine,
  unknown,
}

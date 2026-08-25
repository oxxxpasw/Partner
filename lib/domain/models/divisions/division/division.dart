import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../metrics/metric.dart';

part 'division.freezed.dart';

@freezed
abstract class Division with _$Division {
  const factory Division({
    required String divisionId,
    required String divisionName,
    required bool isOpen,
    required DivisionStatus status,
    required List<Metric> metrics,
    required String menuFileName,
    String? address,
  }) = _Division;
}

enum DivisionStatus {
  enabled,
  disabled,
}

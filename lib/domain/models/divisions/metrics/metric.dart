import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metric.freezed.dart';

@freezed
abstract class Metric with _$Metric {
  const Metric._();

  const factory Metric({
    required String divisionId,
    required String divisionName,
    required String id,
    required String title,
    required String unitOfMeasurement,
    required double fact,
    double? lfl,
    double? plan,
    required double difference,
    required DestinationType destinationType,
    required String method,
  }) = _Metric;

  int get diffInPercent {
    final lfl = this.lfl;
    if (lfl == null || lfl == 0) {
      return 0;
    }
    return ((fact - lfl) / lfl * 100).round();
  }

  String get diffInPercentString {
    final diff = diffInPercent;

    final diffString = '$diff%';

    if (diff > 0) {
      return '+$diffString';
    }

    return diffString;
  }
}

enum DestinationType { coffeeMachine, fridge, total, unknown }

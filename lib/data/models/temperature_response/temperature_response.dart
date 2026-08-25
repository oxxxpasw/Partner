import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'temperature_response.freezed.dart';
part 'temperature_response.g.dart';

@freezed
abstract class UnitTemperature with _$UnitTemperature {
  const factory UnitTemperature({
    DateTime? createdDatetime,
    double? temperature,
  }) = _UnitTemperature;

  factory UnitTemperature.fromJson(Map<String, dynamic> json) =>
      _$UnitTemperatureFromJson(json);
}

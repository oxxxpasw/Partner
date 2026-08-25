import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'metrics_response.freezed.dart';
part 'metrics_response.g.dart';

@freezed
abstract class MetricsResponse with _$MetricsResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory MetricsResponse({
    required List<MetricItemResponse> data,
  }) = _MetricsResponse;

  factory MetricsResponse.fromJson(Map<String, dynamic> json) =>
      _$MetricsResponseFromJson(json);
}

@freezed
abstract class MetricItemResponse with _$MetricItemResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory MetricItemResponse(
      {required String divisionId,
      required String divisionName,
      required String id,
      required String title,
      required String unitOfMeasurement,
      double? fact,
      double? lfl,
      double? plan,
      required double difference,
      @JsonKey(
        unknownEnumValue: DestinationTypeResponse.unknown,
        defaultValue: DestinationTypeResponse.unknown,
      )
      required DestinationTypeResponse destinationType,
      required String method,
      S}) = _MetricItemResponse;

  factory MetricItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MetricItemResponseFromJson(json);
}

enum DestinationTypeResponse {
  @JsonValue(0)
  coffeeMachine,
  @JsonValue(1)
  fridge,
  @JsonValue(2)
  total,
  unknown,
}

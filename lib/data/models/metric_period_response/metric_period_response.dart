import 'package:freezed_annotation/freezed_annotation.dart';

part 'metric_period_response.freezed.dart';
part 'metric_period_response.g.dart';

@freezed
abstract class MetricPeriodResponse with _$MetricPeriodResponse {
  const factory MetricPeriodResponse({
    @JsonKey(name: 'default') required int defaultItem,
    @JsonKey(name: 'types') required List<MetricPeriodItemResponse> items,
  }) = _MetricPeriodResponse;

  factory MetricPeriodResponse.fromJson(Map<String, dynamic> json) =>
      _$MetricPeriodResponseFromJson(json);
}

@freezed
abstract class MetricPeriodItemResponse with _$MetricPeriodItemResponse {
  const factory MetricPeriodItemResponse({
    @JsonKey(name: 'id') required String name,
    required int index,
  }) = _MetricPeriodItemResponse;

  factory MetricPeriodItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MetricPeriodItemResponseFromJson(json);
}

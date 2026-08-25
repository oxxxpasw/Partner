import 'package:freezed_annotation/freezed_annotation.dart';

part 'metric_periods.freezed.dart';

@freezed
abstract class MetricPeriods with _$MetricPeriods {
  const factory MetricPeriods({
    required MetricPeriodItem defaultItem,
    required List<MetricPeriodItem> items,
  }) = _MetricPeriods;
}

@freezed
abstract class MetricPeriodItem with _$MetricPeriodItem {
  const factory MetricPeriodItem({
    required String name,
    required int index,
  }) = _MetricPeriodItem;
}

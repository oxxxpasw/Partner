import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_data.freezed.dart';

@freezed
abstract class ReportData with _$ReportData {
  const factory ReportData({
    required ReportDataOptions options,
    required List<ReportDataColumn> columns,
    required List<Map<String, dynamic>> rows,
  }) = _ReportData;
}

@freezed
abstract class ReportDataOptions with _$ReportDataOptions {
  const factory ReportDataOptions({
    String? title,
  }) = _ReportDataOptions;
}

@freezed
abstract class ReportDataColumn with _$ReportDataColumn {
  const factory ReportDataColumn({
    required String key,
    String? title,
    required ReportDataColumnType type,
    required bool isVisible,
  }) = _ReportDataColumn;
}

extension GetNestedRowsExtension on Map<String, dynamic> {
  List<Map<String, dynamic>>? getNestedRows() => this['nested'] is List
      ? (this['nested'] as List).cast<Map<String, dynamic>>()
      : null;

  bool get hasNestedRows => this['nested'] != null;

  bool get isSummaryRow => this['isSummary'] == true;
}

enum ReportDataColumnType { string, number, unknown }

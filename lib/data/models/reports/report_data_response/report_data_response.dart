import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'report_data_response.freezed.dart';
part 'report_data_response.g.dart';

@freezed
abstract class ReportDataResponse with _$ReportDataResponse {
  const factory ReportDataResponse({
    ReportDataOptionsResponse? options,
    required List<ReportDataColumnResponse> columns,
    required List<Map<String, dynamic>> rows,
  }) = _ReportDataResponse;

  factory ReportDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportDataResponseFromJson(json);
}

@freezed
abstract class ReportDataOptionsResponse with _$ReportDataOptionsResponse {
  const factory ReportDataOptionsResponse({
    String? title,
  }) = _ReportDataOptionsResponse;

  factory ReportDataOptionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportDataOptionsResponseFromJson(json);
}

@freezed
abstract class ReportDataColumnResponse with _$ReportDataColumnResponse {
  const factory ReportDataColumnResponse({
    required String key,
    String? title,
    @JsonKey(
      unknownEnumValue: ReportDataResponseDataType.unknown,
      defaultValue: ReportDataResponseDataType.string,
    )
    required ReportDataResponseDataType type,
    @Default(true) bool isVisible,
  }) = _ReportDataColumnResponse;

  factory ReportDataColumnResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportDataColumnResponseFromJson(json);
}

enum ReportDataResponseDataType { string, number, unknown }

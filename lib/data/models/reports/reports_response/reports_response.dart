import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reports_response.freezed.dart';
part 'reports_response.g.dart';

@freezed
abstract class ReportsResponse with _$ReportsResponse {
  const factory ReportsResponse({
    required List<ReportResponse> reports,
  }) = _ReportsResponse;

  factory ReportsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportsResponseFromJson(json);
}

@freezed
abstract class ReportResponse with _$ReportResponse {
  const factory ReportResponse({
    required String id,
    required String name,
  }) = _ReportResponse;

  factory ReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseFromJson(json);
}

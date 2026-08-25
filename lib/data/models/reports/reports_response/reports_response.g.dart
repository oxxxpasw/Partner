// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportsResponse _$ReportsResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ReportsResponse', json, ($defaultConvert) {
      final val = _ReportsResponse(
        reports: $defaultConvert(
          'reports',
          (v) => (v as List<dynamic>)
              .map((e) => ReportResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReportsResponseToJson(_ReportsResponse instance) =>
    <String, dynamic>{
      'reports': instance.reports.map((e) => e.toJson()).toList(),
    };

_ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ReportResponse', json, ($defaultConvert) {
      final val = _ReportResponse(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ReportResponseToJson(_ReportResponse instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

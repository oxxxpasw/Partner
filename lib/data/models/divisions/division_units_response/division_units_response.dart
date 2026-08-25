import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:sosedifedi/data/models/divisions/division_response/division.dart';

import '../metrics_response/metrics_response.dart';

part 'division_units_response.freezed.dart';
part 'division_units_response.g.dart';

@freezed
abstract class DivisionUnitsResponse with _$DivisionUnitsResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory DivisionUnitsResponse({
    required DivisionResponse division,
    required List<DivisionUnitItemResponse> data,
  }) = _DivisionUnitsResponse;

  factory DivisionUnitsResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionUnitsResponseFromJson(json);
}

@freezed
abstract class DivisionUnitItemResponse with _$DivisionUnitItemResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory DivisionUnitItemResponse({
    required String unitId,
    required String unitName,
    required bool isOpen,
    required DateTime? start,
    required DateTime? end,
    required String type,
    String? address,
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    DestinationTypeResponse? destinationType,
    String? lastConnection,
    double? lastTemperature,
  }) = _DivisionUnitItemResponse;

  factory DivisionUnitItemResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionUnitItemResponseFromJson(json);
}

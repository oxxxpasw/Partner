import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'division.freezed.dart';
part 'division.g.dart';

@freezed
abstract class DivisionsResponse with _$DivisionsResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory DivisionsResponse({
    required List<DivisionResponse> data,
  }) = _DivisionsResponse;

  factory DivisionsResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionsResponseFromJson(json);
}

@freezed
abstract class DivisionResponse with _$DivisionResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory DivisionResponse({
    required String divisionId,
    required String divisionName,
    required bool isOpen,
    required String menuFileName,
    String? address,
    @Default(DivisionResponseStatus.disabled)
    @JsonKey(
        name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled)
    DivisionResponseStatus status,
  }) = _DivisionResponse;

  factory DivisionResponse.fromJson(Map<String, dynamic> json) =>
      _$DivisionResponseFromJson(json);
}

enum DivisionResponseStatus {
  @JsonValue(1)
  enabled,
  @JsonValue(0)
  disabled,
}

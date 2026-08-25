import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vendista_request_body.freezed.dart';
part 'vendista_request_body.g.dart';

@freezed
abstract class CreateVendistaRequestBody with _$CreateVendistaRequestBody {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CreateVendistaRequestBody({
    required String login,
    required String password,
    required String token,
    required List<int> idVendista,
  }) = _CreateVendistaRequestBody;

  factory CreateVendistaRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateVendistaRequestBodyFromJson(json);
}

@freezed
abstract class VendistaTerminalsBody with _$VendistaTerminalsBody {
  const factory VendistaTerminalsBody({
    required String login,
    required String password,
    required String token,
  }) = _VendistaTerminalsBody;

  factory VendistaTerminalsBody.fromJson(Map<String, dynamic> json) =>
      _$VendistaTerminalsBodyFromJson(json);
}

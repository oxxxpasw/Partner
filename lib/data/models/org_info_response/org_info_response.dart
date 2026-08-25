import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';

part 'org_info_response.freezed.dart';
part 'org_info_response.g.dart';

@freezed
abstract class OrgInfoResponse with _$OrgInfoResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory OrgInfoResponse({
    String? organization,
    @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
    OrganizationType? entityType,
    String? vat,
  }) = _OrgInfoResponse;

  factory OrgInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$OrgInfoResponseFromJson(json);
}

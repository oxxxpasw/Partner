import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sosedifedi/data/models/new_data_request/new_data_request.dart';

part 'org_info.freezed.dart';

@freezed
abstract class OrgInfo with _$OrgInfo {
  const factory OrgInfo({
    String? organization,
    OrganizationType? entityType,
    String? vat,
  }) = _OrgInfo;
}

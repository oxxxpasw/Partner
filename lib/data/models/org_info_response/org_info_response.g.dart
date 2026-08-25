// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrgInfoResponse _$OrgInfoResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_OrgInfoResponse', json, ($defaultConvert) {
      final val = _OrgInfoResponse(
        organization: $defaultConvert('organization', (v) => v as String?),
        entityType: $defaultConvert(
          'entityType',
          (v) => $enumDecodeNullable(
            _$OrganizationTypeEnumMap,
            v,
            unknownValue: JsonKey.nullForUndefinedEnumValue,
          ),
        ),
        vat: $defaultConvert('vat', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$OrgInfoResponseToJson(_OrgInfoResponse instance) =>
    <String, dynamic>{
      'organization': instance.organization,
      'entityType': _$OrganizationTypeEnumMap[instance.entityType],
      'vat': instance.vat,
    };

const _$OrganizationTypeEnumMap = {
  OrganizationType.individual: 0,
  OrganizationType.legal: 1,
};

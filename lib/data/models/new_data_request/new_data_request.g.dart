// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewDataRequest _$NewDataRequestFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_NewDataRequest', json, ($defaultConvert) {
      final val = _NewDataRequest(
        entityType: $defaultConvert(
          'entityType',
          (v) => $enumDecode(_$OrganizationTypeEnumMap, v),
        ),
        organization: $defaultConvert('organization', (v) => v as String),
        vat: $defaultConvert('vat', (v) => v as String),
        city: $defaultConvert('city', (v) => v as String),
        address: $defaultConvert('address', (v) => v as String),
        locationName: $defaultConvert('locationName', (v) => v as String),
        latitude: $defaultConvert('latitude', (v) => (v as num).toDouble()),
        longitude: $defaultConvert('longitude', (v) => (v as num).toDouble()),
        requestId: $defaultConvert('requestId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$NewDataRequestToJson(_NewDataRequest instance) =>
    <String, dynamic>{
      'entityType': _$OrganizationTypeEnumMap[instance.entityType]!,
      'organization': instance.organization,
      'vat': instance.vat,
      'city': instance.city,
      'address': instance.address,
      'locationName': instance.locationName,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'requestId': instance.requestId,
    };

const _$OrganizationTypeEnumMap = {
  OrganizationType.individual: 0,
  OrganizationType.legal: 1,
};

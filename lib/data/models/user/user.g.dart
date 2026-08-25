// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_User',
  json,
  ($defaultConvert) {
    final val = _User(
      token: $defaultConvert('token', (v) => v as String),
      systemId: $defaultConvert('system_id', (v) => v as String),
      createDate: $defaultConvert('create_date', (v) => v as String),
      userId: $defaultConvert('user_id', (v) => v as String),
      mobileNumber: $defaultConvert('mobile_number', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'systemId': 'system_id',
    'createDate': 'create_date',
    'userId': 'user_id',
    'mobileNumber': 'mobile_number',
  },
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'token': instance.token,
  'system_id': instance.systemId,
  'create_date': instance.createDate,
  'user_id': instance.userId,
  'mobile_number': instance.mobileNumber,
};

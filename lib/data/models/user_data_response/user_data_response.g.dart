// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_UserDataResponse', json, ($defaultConvert) {
      final val = _UserDataResponse(
        firstName: $defaultConvert('first_name', (v) => v as String?),
        surname: $defaultConvert('surname', (v) => v as String?),
        birthDay: $defaultConvert(
          'birth_day',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        gender: $defaultConvert(
          'gender',
          (v) => $enumDecodeNullable(
            _$GenderEnumMap,
            v,
            unknownValue: Gender.unknown,
          ),
        ),
        email: $defaultConvert('email', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'firstName': 'first_name', 'birthDay': 'birth_day'});

Map<String, dynamic> _$UserDataResponseToJson(_UserDataResponse instance) =>
    <String, dynamic>{
      'first_name': ?instance.firstName,
      'surname': ?instance.surname,
      'birth_day': ?instance.birthDay?.toIso8601String(),
      'gender': ?_$GenderEnumMap[instance.gender],
      'email': ?instance.email,
    };

const _$GenderEnumMap = {
  Gender.men: 'men',
  Gender.women: 'woman',
  Gender.unknown: 'unknown',
};

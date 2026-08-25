// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoder_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeocoderLocation _$GeocoderLocationFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_GeocoderLocation', json, ($defaultConvert) {
      final val = _GeocoderLocation(
        cityName: $defaultConvert('city_name', (v) => v as String?),
        center: $defaultConvert(
          'center',
          (v) =>
              (v as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'cityName': 'city_name'});

Map<String, dynamic> _$GeocoderLocationToJson(_GeocoderLocation instance) =>
    <String, dynamic>{
      'city_name': instance.cityName,
      'center': instance.center,
    };

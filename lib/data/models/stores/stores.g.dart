// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Country', json, ($defaultConvert) {
      final val = _Country(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        cities: $defaultConvert(
          'cities',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, City.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
          readValue: readAsMap,
          defaultValue: const {},
        ),
        flagImageUrl: $defaultConvert('flagImageUrl', (v) => v as String?),
        wikidataId: $defaultConvert('wikidataId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cities': instance.cities.map((k, e) => MapEntry(k, e.toJson())),
  'flagImageUrl': instance.flagImageUrl,
  'wikidataId': instance.wikidataId,
};

_City _$CityFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_City', json, ($defaultConvert) {
      final val = _City(
        id: $defaultConvert('id', (v) => v as String),
        menuFileName: $defaultConvert('menuFileName', (v) => v as String?),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        stores: $defaultConvert(
          'stores',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) =>
                    MapEntry(k, Store.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
          readValue: readAsMap,
          defaultValue: const {},
        ),
        wikidataIds: $defaultConvert(
          'wikidataIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        latitude: $defaultConvert('latitude', (v) => (v as num?)?.toDouble()),
        longitude: $defaultConvert('longitude', (v) => (v as num?)?.toDouble()),
      );
      return val;
    });

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
  'id': instance.id,
  'menuFileName': instance.menuFileName,
  'name': instance.name,
  'stores': instance.stores.map((k, e) => MapEntry(k, e.toJson())),
  'wikidataIds': instance.wikidataIds,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_Store _$StoreFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Store', json, ($defaultConvert) {
      final val = _Store(
        id: $defaultConvert('id', (v) => v as String),
        menuFileName: $defaultConvert('menuFileName', (v) => v as String),
        address: $defaultConvert('address', (v) => v as String?),
        name: $defaultConvert('name', (v) => v as String?),
        logoUrl: $defaultConvert('logoUrl', (v) => v as String?),
        markerUrl: $defaultConvert('markerUrl', (v) => v as String?),
        latitude: $defaultConvert(
          'latitude',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
        longitude: $defaultConvert(
          'longitude',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
        offsetFromUtc: $defaultConvert(
          'offsetFromUtc',
          (v) => _$JsonConverterFromJson<String, Duration>(
            v,
            const DurationConverter().fromJson,
          ),
        ),
        scheduleDescription: $defaultConvert(
          'scheduleDescription',
          (v) => v as String?,
        ),
        weekWorkTime: $defaultConvert(
          'weekWorkTime',
          (v) => v == null
              ? const {}
              : const ScheduleConverter().fromJson(v as Map<String, dynamic>),
          defaultValue: const {},
        ),
        fridge: $defaultConvert(
          'fridge',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) =>
                    MapEntry(k, Fridge.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {},
          readValue: readAsMap,
          defaultValue: const {},
        ),
        coffeeMachine: $defaultConvert(
          'coffeeMachine',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                  k,
                  CoffeeMachine.fromJson(e as Map<String, dynamic>),
                ),
              ) ??
              const {},
          readValue: readAsMap,
          defaultValue: const {},
        ),
      );
      return val;
    });

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'menuFileName': instance.menuFileName,
  'address': instance.address,
  'name': instance.name,
  'logoUrl': instance.logoUrl,
  'markerUrl': instance.markerUrl,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'offsetFromUtc': _$JsonConverterToJson<String, Duration>(
    instance.offsetFromUtc,
    const DurationConverter().toJson,
  ),
  'scheduleDescription': instance.scheduleDescription,
  'weekWorkTime': const ScheduleConverter().toJson(instance.weekWorkTime),
  'fridge': instance.fridge.map((k, e) => MapEntry(k, e.toJson())),
  'coffeeMachine': instance.coffeeMachine.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_ScheduleItem _$ScheduleItemFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ScheduleItem', json, ($defaultConvert) {
      final val = _ScheduleItem(
        start: $defaultConvert(
          'start',
          (v) => const DurationConverter().fromJson(v as String),
        ),
        end: $defaultConvert(
          'end',
          (v) => const DurationConverter().fromJson(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ScheduleItemToJson(_ScheduleItem instance) =>
    <String, dynamic>{
      'start': const DurationConverter().toJson(instance.start),
      'end': const DurationConverter().toJson(instance.end),
    };

_Fridge _$FridgeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Fridge', json, ($defaultConvert) {
      final val = _Fridge(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$FridgeToJson(_Fridge instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_CoffeeMachine _$CoffeeMachineFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_CoffeeMachine', json, ($defaultConvert) {
      final val = _CoffeeMachine(
        id: $defaultConvert('id', (v) => v as String),
        menuFileName: $defaultConvert('menuFileName', (v) => v as String),
        name: $defaultConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CoffeeMachineToJson(_CoffeeMachine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'menuFileName': instance.menuFileName,
      'name': instance.name,
    };

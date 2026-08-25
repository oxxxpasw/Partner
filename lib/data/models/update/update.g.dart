// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Updates _$UpdatesFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_Updates',
  json,
  ($defaultConvert) {
    final val = _Updates(
      immediateUpdate: $defaultConvert(
        'immediate_update',
        (v) => Update.fromJson(v as Map<String, dynamic>),
      ),
      optionalUpdate: $defaultConvert(
        'optional_update',
        (v) => Update.fromJson(v as Map<String, dynamic>),
      ),
      storeLinks: $defaultConvert(
        'store_links',
        (v) => v == null
            ? null
            : AppsStoreLinks.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'immediateUpdate': 'immediate_update',
    'optionalUpdate': 'optional_update',
    'storeLinks': 'store_links',
  },
);

Map<String, dynamic> _$UpdatesToJson(_Updates instance) => <String, dynamic>{
  'immediate_update': instance.immediateUpdate.toJson(),
  'optional_update': instance.optionalUpdate.toJson(),
  'store_links': instance.storeLinks?.toJson(),
};

_AppsStoreLinks _$AppsStoreLinksFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_AppsStoreLinks',
      json,
      ($defaultConvert) {
        final val = _AppsStoreLinks(
          googlePlayUrl: $defaultConvert(
            'google_play_url',
            (v) => v as String?,
          ),
          itunesUrl: $defaultConvert('itunes_url', (v) => v as String?),
          androidMarketUrl: $defaultConvert(
            'android_market_url',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'googlePlayUrl': 'google_play_url',
        'itunesUrl': 'itunes_url',
        'androidMarketUrl': 'android_market_url',
      },
    );

Map<String, dynamic> _$AppsStoreLinksToJson(_AppsStoreLinks instance) =>
    <String, dynamic>{
      'google_play_url': instance.googlePlayUrl,
      'itunes_url': instance.itunesUrl,
      'android_market_url': instance.androidMarketUrl,
    };

_Update _$UpdateFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Update', json, ($defaultConvert) {
      final val = _Update(
        version: $defaultConvert(
          'version',
          (v) => const VersionConverter().fromJson(v as String),
        ),
        enabled: $defaultConvert('enabled', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$UpdateToJson(_Update instance) => <String, dynamic>{
  'version': const VersionConverter().toJson(instance.version),
  'enabled': instance.enabled,
};

_Version _$VersionFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_Version',
  json,
  ($defaultConvert) {
    final val = _Version(
      major: $defaultConvert('major', (v) => (v as num).toInt()),
      minor: $defaultConvert('minor', (v) => (v as num).toInt()),
      revision: $defaultConvert('revision', (v) => (v as num).toInt()),
      buildNumber: $defaultConvert('build_number', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'buildNumber': 'build_number'},
);

Map<String, dynamic> _$VersionToJson(_Version instance) => <String, dynamic>{
  'major': instance.major,
  'minor': instance.minor,
  'revision': instance.revision,
  'build_number': instance.buildNumber,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusChanged _$OrderStatusChangedFromJson(Map<String, dynamic> json) =>
    $defaultCreate('OrderStatusChanged', json, ($defaultConvert) {
      final val = OrderStatusChanged(
        id: $defaultConvert('id', (v) => v as String),
        status: $defaultConvert('status', (v) => v as String),
        screen: $defaultConvert('screen', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$OrderStatusChangedToJson(OrderStatusChanged instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'screen': instance.screen,
      'type': instance.$type,
    };

OpenScreen _$OpenScreenFromJson(Map<String, dynamic> json) =>
    $defaultCreate('OpenScreen', json, ($defaultConvert) {
      final val = OpenScreen(
        screen: $defaultConvert('screen', (v) => v as String?),
        data: $defaultConvert('data', (v) => v),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$OpenScreenToJson(OpenScreen instance) =>
    <String, dynamic>{
      'screen': instance.screen,
      'data': instance.data,
      'type': instance.$type,
    };

BonusesChanged _$BonusesChangedFromJson(Map<String, dynamic> json) =>
    $defaultCreate('BonusesChanged', json, ($defaultConvert) {
      final val = BonusesChanged(
        screen: $defaultConvert('screen', (v) => v as String?),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$BonusesChangedToJson(BonusesChanged instance) =>
    <String, dynamic>{'screen': instance.screen, 'type': instance.$type};

_NotificationHeader _$NotificationHeaderFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_NotificationHeader', json, ($defaultConvert) {
      final val = _NotificationHeader(
        $defaultConvert('title', (v) => v as String),
        $defaultConvert('body', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$NotificationHeaderToJson(_NotificationHeader instance) =>
    <String, dynamic>{'title': instance.title, 'body': instance.body};

_Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_Notification', json, ($defaultConvert) {
      final val = _Notification(
        header: $defaultConvert(
          'header',
          (v) => const NotificationHeaderConverter().fromJson(
            v as Map<String, dynamic>,
          ),
          readValue: readHeader,
        ),
        data: $defaultConvert(
          'data',
          (v) => NotificationData.fromJson(v as Map<String, dynamic>),
        ),
        sentTime: $defaultConvert('sentTime', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$NotificationToJson(_Notification instance) =>
    <String, dynamic>{
      'header': const NotificationHeaderConverter().toJson(instance.header),
      'data': instance.data.toJson(),
      'sentTime': instance.sentTime,
    };

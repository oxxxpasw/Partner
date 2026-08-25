// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_AppConfig',
  json,
  ($defaultConvert) {
    final val = _AppConfig(
      bonusesEnabled: $defaultConvert(
        'bonuses_enabled',
        (v) => v as bool? ?? false,
        defaultValue: false,
      ),
      fridgeOpenTimeInSeconds: $defaultConvert(
        'fridge_open_time_in_seconds',
        (v) => (v as num?)?.toInt() ?? 5,
        defaultValue: 5,
      ),
      technicalSupportPhone: $defaultConvert(
        'technical_support_phone',
        (v) => v as String?,
      ),
      userXEnabled: $defaultConvert(
        'user_x_enabled',
        (v) => v as bool? ?? false,
        defaultValue: false,
      ),
      outOfStockBehavior: $defaultConvert(
        'out_of_stock_behavior',
        (v) =>
            $enumDecodeNullable(
              _$OutOfStockBehaviorEnumMap,
              v,
              unknownValue: OutOfStockBehavior.hide,
            ) ??
            OutOfStockBehavior.hide,
        defaultValue: OutOfStockBehavior.hide,
      ),
      feedbackUrl: $defaultConvert(
        'feedback_url',
        (v) => v == null ? null : Uri.parse(v as String),
      ),
      showFeedbackBanner: $defaultConvert(
        'show_feedback_banner',
        (v) => v as bool? ?? false,
        defaultValue: false,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'bonusesEnabled': 'bonuses_enabled',
    'fridgeOpenTimeInSeconds': 'fridge_open_time_in_seconds',
    'technicalSupportPhone': 'technical_support_phone',
    'userXEnabled': 'user_x_enabled',
    'outOfStockBehavior': 'out_of_stock_behavior',
    'feedbackUrl': 'feedback_url',
    'showFeedbackBanner': 'show_feedback_banner',
  },
);

Map<String, dynamic> _$AppConfigToJson(_AppConfig instance) =>
    <String, dynamic>{
      'bonuses_enabled': instance.bonusesEnabled,
      'fridge_open_time_in_seconds': instance.fridgeOpenTimeInSeconds,
      'technical_support_phone': instance.technicalSupportPhone,
      'user_x_enabled': instance.userXEnabled,
      'out_of_stock_behavior':
          _$OutOfStockBehaviorEnumMap[instance.outOfStockBehavior]!,
      'feedback_url': instance.feedbackUrl?.toString(),
      'show_feedback_banner': instance.showFeedbackBanner,
    };

const _$OutOfStockBehaviorEnumMap = {
  OutOfStockBehavior.show: 'show',
  OutOfStockBehavior.hide: 'hide',
};

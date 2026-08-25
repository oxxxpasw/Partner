// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppEnvironment _$AppEnvironmentFromJson(
  Map<String, dynamic> json,
) => $defaultCreate(
  '_AppEnvironment',
  json,
  ($defaultConvert) {
    final val = _AppEnvironment(
      configType: $defaultConvert(
        'config_type',
        (v) => $enumDecode(_$ConfigTypeEnumMap, v),
      ),
      buildType: $defaultConvert(
        'build_type',
        (v) => $enumDecode(_$BuildTypeEnumMap, v),
      ),
      debugOptions: $defaultConvert(
        'debug_options',
        (v) => DebugOptions.fromJson(v as Map<String, dynamic>),
      ),
      debugPaintOptions: $defaultConvert(
        'debug_paint_options',
        (v) => DebugPaintOptions.fromJson(v as Map<String, dynamic>),
      ),
      apiEndpoint: $defaultConvert('api_endpoint', (v) => v as String),
      authServiceEndpoint: $defaultConvert(
        'auth_service_endpoint',
        (v) => v as String,
      ),
      systemId: $defaultConvert('system_id', (v) => v as String),
      customerApiEndpoint: $defaultConvert(
        'customer_api_endpoint',
        (v) => v as String,
      ),
      analystEndpoint: $defaultConvert('analyst_endpoint', (v) => v as String),
      geocoderApiKey: $defaultConvert('geocoder_api_key', (v) => v as String),
      sbpUrl: $defaultConvert('sbp_url', (v) => v as String),
      paymentServiceEndpoint: $defaultConvert(
        'payment_service_endpoint',
        (v) => v as String,
      ),
      dataownerId: $defaultConvert('dataowner_id', (v) => v as String),
      orderEndpoint: $defaultConvert('order_endpoint', (v) => v as String),
      geocoderApiUrl: $defaultConvert('geocoder_api_url', (v) => v as String),
      defaultStore: $defaultConvert('default_store', (v) => v as String),
      integrationId: $defaultConvert('integration_id', (v) => v as String),
      fridgeApiUrl: $defaultConvert('fridge_api_url', (v) => v as String),
      paymentRedirectUrl: $defaultConvert(
        'payment_redirect_url',
        (v) => PaymentRedirectUrl.fromJson(v as Map<String, dynamic>),
      ),
      legalInfo: $defaultConvert(
        'legal_info',
        (v) => LegalInfo.fromJson(v as Map<String, dynamic>),
      ),
      api1cEndpoint: $defaultConvert('api1c_endpoint', (v) => v as String),
      qrEndpoint: $defaultConvert('qr_endpoint', (v) => v as String),
      websiteUrl: $defaultConvert('website_url', (v) => v as String),
      knowledgeBaseUrl: $defaultConvert(
        'knowledge_base_url',
        (v) => v as String,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'configType': 'config_type',
    'buildType': 'build_type',
    'debugOptions': 'debug_options',
    'debugPaintOptions': 'debug_paint_options',
    'apiEndpoint': 'api_endpoint',
    'authServiceEndpoint': 'auth_service_endpoint',
    'systemId': 'system_id',
    'customerApiEndpoint': 'customer_api_endpoint',
    'analystEndpoint': 'analyst_endpoint',
    'geocoderApiKey': 'geocoder_api_key',
    'sbpUrl': 'sbp_url',
    'paymentServiceEndpoint': 'payment_service_endpoint',
    'dataownerId': 'dataowner_id',
    'orderEndpoint': 'order_endpoint',
    'geocoderApiUrl': 'geocoder_api_url',
    'defaultStore': 'default_store',
    'integrationId': 'integration_id',
    'fridgeApiUrl': 'fridge_api_url',
    'paymentRedirectUrl': 'payment_redirect_url',
    'legalInfo': 'legal_info',
    'api1cEndpoint': 'api1c_endpoint',
    'qrEndpoint': 'qr_endpoint',
    'websiteUrl': 'website_url',
    'knowledgeBaseUrl': 'knowledge_base_url',
  },
);

Map<String, dynamic> _$AppEnvironmentToJson(_AppEnvironment instance) =>
    <String, dynamic>{
      'config_type': _$ConfigTypeEnumMap[instance.configType]!,
      'build_type': _$BuildTypeEnumMap[instance.buildType]!,
      'debug_options': instance.debugOptions.toJson(),
      'debug_paint_options': instance.debugPaintOptions.toJson(),
      'api_endpoint': instance.apiEndpoint,
      'auth_service_endpoint': instance.authServiceEndpoint,
      'system_id': instance.systemId,
      'customer_api_endpoint': instance.customerApiEndpoint,
      'analyst_endpoint': instance.analystEndpoint,
      'geocoder_api_key': instance.geocoderApiKey,
      'sbp_url': instance.sbpUrl,
      'payment_service_endpoint': instance.paymentServiceEndpoint,
      'dataowner_id': instance.dataownerId,
      'order_endpoint': instance.orderEndpoint,
      'geocoder_api_url': instance.geocoderApiUrl,
      'default_store': instance.defaultStore,
      'integration_id': instance.integrationId,
      'fridge_api_url': instance.fridgeApiUrl,
      'payment_redirect_url': instance.paymentRedirectUrl.toJson(),
      'legal_info': instance.legalInfo.toJson(),
      'api1c_endpoint': instance.api1cEndpoint,
      'qr_endpoint': instance.qrEndpoint,
      'website_url': instance.websiteUrl,
      'knowledge_base_url': instance.knowledgeBaseUrl,
    };

const _$ConfigTypeEnumMap = {
  ConfigType.release: 'release',
  ConfigType.test: 'test',
};

const _$BuildTypeEnumMap = {
  BuildType.debug: 'debug',
  BuildType.release: 'release',
  BuildType.test: 'test',
};

_DebugOptions _$DebugOptionsFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_DebugOptions',
      json,
      ($defaultConvert) {
        final val = _DebugOptions(
          showPerformanceOverlay: $defaultConvert(
            'show_performance_overlay',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugShowMaterialGrid: $defaultConvert(
            'debug_show_material_grid',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          checkerboardRasterCacheImages: $defaultConvert(
            'checkerboard_raster_cache_images',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          checkerboardOffscreenLayers: $defaultConvert(
            'checkerboard_offscreen_layers',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          showSemanticsDebugger: $defaultConvert(
            'show_semantics_debugger',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugShowCheckedModeBanner: $defaultConvert(
            'debug_show_checked_mode_banner',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'showPerformanceOverlay': 'show_performance_overlay',
        'debugShowMaterialGrid': 'debug_show_material_grid',
        'checkerboardRasterCacheImages': 'checkerboard_raster_cache_images',
        'checkerboardOffscreenLayers': 'checkerboard_offscreen_layers',
        'showSemanticsDebugger': 'show_semantics_debugger',
        'debugShowCheckedModeBanner': 'debug_show_checked_mode_banner',
      },
    );

Map<String, dynamic> _$DebugOptionsToJson(
  _DebugOptions instance,
) => <String, dynamic>{
  'show_performance_overlay': instance.showPerformanceOverlay,
  'debug_show_material_grid': instance.debugShowMaterialGrid,
  'checkerboard_raster_cache_images': instance.checkerboardRasterCacheImages,
  'checkerboard_offscreen_layers': instance.checkerboardOffscreenLayers,
  'show_semantics_debugger': instance.showSemanticsDebugger,
  'debug_show_checked_mode_banner': instance.debugShowCheckedModeBanner,
};

_DebugPaintOptions _$DebugPaintOptionsFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_DebugPaintOptions',
      json,
      ($defaultConvert) {
        final val = _DebugPaintOptions(
          debugPaintSizeEnabled: $defaultConvert(
            'debug_paint_size_enabled',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugPaintBaselinesEnabled: $defaultConvert(
            'debug_paint_baselines_enabled',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugPaintPointersEnabled: $defaultConvert(
            'debug_paint_pointers_enabled',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugPaintLayerBordersEnabled: $defaultConvert(
            'debug_paint_layer_borders_enabled',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
          debugRepaintRainbowEnabled: $defaultConvert(
            'debug_repaint_rainbow_enabled',
            (v) => v as bool? ?? false,
            defaultValue: false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'debugPaintSizeEnabled': 'debug_paint_size_enabled',
        'debugPaintBaselinesEnabled': 'debug_paint_baselines_enabled',
        'debugPaintPointersEnabled': 'debug_paint_pointers_enabled',
        'debugPaintLayerBordersEnabled': 'debug_paint_layer_borders_enabled',
        'debugRepaintRainbowEnabled': 'debug_repaint_rainbow_enabled',
      },
    );

Map<String, dynamic> _$DebugPaintOptionsToJson(
  _DebugPaintOptions instance,
) => <String, dynamic>{
  'debug_paint_size_enabled': instance.debugPaintSizeEnabled,
  'debug_paint_baselines_enabled': instance.debugPaintBaselinesEnabled,
  'debug_paint_pointers_enabled': instance.debugPaintPointersEnabled,
  'debug_paint_layer_borders_enabled': instance.debugPaintLayerBordersEnabled,
  'debug_repaint_rainbow_enabled': instance.debugRepaintRainbowEnabled,
};

_PaymentRedirectUrl _$PaymentRedirectUrlFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_PaymentRedirectUrl',
      json,
      ($defaultConvert) {
        final val = _PaymentRedirectUrl(
          successUrl: $defaultConvert('success_url', (v) => v as String),
          failureUrl: $defaultConvert('failure_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'successUrl': 'success_url',
        'failureUrl': 'failure_url',
      },
    );

Map<String, dynamic> _$PaymentRedirectUrlToJson(_PaymentRedirectUrl instance) =>
    <String, dynamic>{
      'success_url': instance.successUrl,
      'failure_url': instance.failureUrl,
    };

_LegalInfo _$LegalInfoFromJson(Map<String, dynamic> json) => $defaultCreate(
  '_LegalInfo',
  json,
  ($defaultConvert) {
    final val = _LegalInfo(
      userAgreementUrl: $defaultConvert(
        'user_agreement_url',
        (v) => v as String,
      ),
      publicOfferUrl: $defaultConvert('public_offer_url', (v) => v as String),
      privacyPolicyUrl: $defaultConvert(
        'privacy_policy_url',
        (v) => v as String,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'userAgreementUrl': 'user_agreement_url',
    'publicOfferUrl': 'public_offer_url',
    'privacyPolicyUrl': 'privacy_policy_url',
  },
);

Map<String, dynamic> _$LegalInfoToJson(_LegalInfo instance) =>
    <String, dynamic>{
      'user_agreement_url': instance.userAgreementUrl,
      'public_offer_url': instance.publicOfferUrl,
      'privacy_policy_url': instance.privacyPolicyUrl,
    };

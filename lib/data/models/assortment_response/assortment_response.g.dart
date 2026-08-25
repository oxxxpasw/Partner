// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assortment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssortmentResponse _$AssortmentResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_AssortmentResponse', json, ($defaultConvert) {
  final val = _AssortmentResponse(
    datetime: $defaultConvert(
      'datetime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    groups: $defaultConvert(
      'groups',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => GroupResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      defaultValue: const [],
    ),
    modifiersGroups: $defaultConvert(
      'modifiers_groups',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    ModifierGroupResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      defaultValue: const [],
    ),
    products: $defaultConvert(
      'products',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      defaultValue: const [],
    ),
    modifiers: $defaultConvert(
      'modifiers',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => ModifierResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      defaultValue: const [],
    ),
  );
  return val;
}, fieldKeyMap: const {'modifiersGroups': 'modifiers_groups'});

Map<String, dynamic> _$AssortmentResponseToJson(
  _AssortmentResponse instance,
) => <String, dynamic>{
  'datetime': instance.datetime?.toIso8601String(),
  'groups': instance.groups.map((e) => e.toJson()).toList(),
  'modifiers_groups': instance.modifiersGroups.map((e) => e.toJson()).toList(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
};

_GroupResponse _$GroupResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_GroupResponse', json, ($defaultConvert) {
  final val = _GroupResponse(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('label', (v) => v as String? ?? '', defaultValue: ''),
    groupId: $defaultConvert('parentGroupId', (v) => v as String?),
    products: $defaultConvert(
      'products',
      (v) =>
          (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      defaultValue: const [],
    ),
    image: $defaultConvert('image', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'name': 'label', 'groupId': 'parentGroupId'});

Map<String, dynamic> _$GroupResponseToJson(_GroupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.name,
      'parentGroupId': instance.groupId,
      'products': instance.products,
      'image': instance.image,
    };

_ModifierResponseRestrictions _$ModifierResponseRestrictionsFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ModifierResponseRestrictions', json, ($defaultConvert) {
  final val = _ModifierResponseRestrictions(
    minQuantity: $defaultConvert(
      'minQuantity',
      (v) => (v as num?)?.toInt() ?? 0,
      defaultValue: 0,
    ),
    maxQuantity: $defaultConvert(
      'maxQuantity',
      (v) => (v as num?)?.toInt() ?? 999,
      defaultValue: 999,
    ),
    freeQuantity: $defaultConvert(
      'freeQuantity',
      (v) => (v as num?)?.toInt() ?? 999,
      defaultValue: 999,
    ),
    byDefault: $defaultConvert(
      'byDefault',
      (v) => (v as num?)?.toInt() ?? 0,
      defaultValue: 0,
    ),
    required: $defaultConvert(
      'required',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
  );
  return val;
});

Map<String, dynamic> _$ModifierResponseRestrictionsToJson(
  _ModifierResponseRestrictions instance,
) => <String, dynamic>{
  'minQuantity': instance.minQuantity,
  'maxQuantity': instance.maxQuantity,
  'freeQuantity': instance.freeQuantity,
  'byDefault': instance.byDefault,
  'required': instance.required,
};

_ModifierResponse _$ModifierResponseFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ModifierResponse', json, ($defaultConvert) {
      final val = _ModifierResponse(
        id: $defaultConvert('id', (v) => v as String),
        name: $defaultConvert(
          'name',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        groupId: $defaultConvert('groupId', (v) => v as String?),
        restrictions: $defaultConvert(
          'restrictions',
          (v) =>
              ModifierResponseRestrictions.fromJson(v as Map<String, dynamic>),
        ),
        price: $defaultConvert(
          'price',
          (v) => (v as num?)?.toDouble() ?? 0.0,
          defaultValue: 0.0,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ModifierResponseToJson(_ModifierResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'groupId': instance.groupId,
      'restrictions': instance.restrictions.toJson(),
      'price': instance.price,
    };

_ModifierGroupResponse _$ModifierGroupResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ModifierGroupResponse', json, ($defaultConvert) {
  final val = _ModifierGroupResponse(
    id: $defaultConvert('id', (v) => v as String),
    name: $defaultConvert('name', (v) => v as String? ?? '', defaultValue: ''),
    restrictions: $defaultConvert(
      'restrictions',
      (v) =>
          ModifierGroupResponseRestriction.fromJson(v as Map<String, dynamic>),
    ),
    modifierSelectionType: $defaultConvert(
      'modifierSelectionType',
      (v) =>
          $enumDecodeNullable(_$ModifierSelectionTypeEnumMap, v) ??
          ModifierSelectionType.dropdown,
      defaultValue: ModifierSelectionType.dropdown,
    ),
  );
  return val;
});

Map<String, dynamic> _$ModifierGroupResponseToJson(
  _ModifierGroupResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'restrictions': instance.restrictions.toJson(),
  'modifierSelectionType':
      _$ModifierSelectionTypeEnumMap[instance.modifierSelectionType]!,
};

const _$ModifierSelectionTypeEnumMap = {
  ModifierSelectionType.toggleSwitch: 0,
  ModifierSelectionType.dropdown: 1,
  ModifierSelectionType.switchButton: 2,
};

_ModifierGroupRestriction _$ModifierGroupRestrictionFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_ModifierGroupRestriction', json, ($defaultConvert) {
  final val = _ModifierGroupRestriction(
    minQuantity: $defaultConvert(
      'minQuantity',
      (v) => (v as num?)?.toInt() ?? 0,
      defaultValue: 0,
    ),
    maxQuantity: $defaultConvert(
      'maxQuantity',
      (v) => (v as num?)?.toInt() ?? 999,
      defaultValue: 999,
    ),
    required: $defaultConvert(
      'required',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
  );
  return val;
});

Map<String, dynamic> _$ModifierGroupRestrictionToJson(
  _ModifierGroupRestriction instance,
) => <String, dynamic>{
  'minQuantity': instance.minQuantity,
  'maxQuantity': instance.maxQuantity,
  'required': instance.required,
};

_DefaultProductResponse _$DefaultProductResponseFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_DefaultProductResponse', json, ($defaultConvert) {
  final val = _DefaultProductResponse(
    id: $defaultConvert('id', (v) => v as String),
    barcodes: $defaultConvert(
      'barcodes',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    sku: $defaultConvert('sku', (v) => (v as num?)?.toInt()),
    name: $defaultConvert('name', (v) => v as String? ?? '', defaultValue: ''),
    groupId: $defaultConvert('groupId', (v) => v as String?),
    folderId: $defaultConvert('folderId', (v) => v as String?),
    price: $defaultConvert('price', (v) => (v as num).toDouble()),
    image: $defaultConvert('image', (v) => v as String?),
    modifiersGroup: $defaultConvert(
      'modifiers_group',
      (v) =>
          (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      defaultValue: const [],
    ),
    currencySymbol: $defaultConvert(
      'currencySymbol',
      (v) => v as String? ?? '₽',
      defaultValue: '₽',
    ),
    description: $defaultConvert('description', (v) => v as String?),
    calorieIntake: $defaultConvert(
      'calorieIntake',
      (v) => v == null
          ? const CalorieIntake()
          : CalorieIntake.fromJson(v as Map<String, dynamic>),
      defaultValue: const CalorieIntake(),
    ),
    shortName: $defaultConvert('shortName', (v) => v as String?),
    isDefault: $defaultConvert(
      'isDefault',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
    ingredientsDescription: $defaultConvert(
      'ingredientsDescription',
      (v) => v as String?,
    ),
    sizeDescription: $defaultConvert('sizeDescription', (v) => v as String?),
    stores: $defaultConvert(
      'stores',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => StoreQuantityResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    itemCode: $defaultConvert('itemCode', (v) => v as String?),
    descriptionHTML: $defaultConvert('descriptionHTML', (v) => v as String?),
    quantity: $defaultConvert(
      'quantity',
      (v) => (v as num?)?.toDouble() ?? 0,
      defaultValue: 0,
    ),
    quantityText: $defaultConvert('quantityText', (v) => v as String?),
    weight: $defaultConvert(
      'weight',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
    volume: $defaultConvert('volume', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'modifiersGroup': 'modifiers_group'});

Map<String, dynamic> _$DefaultProductResponseToJson(
  _DefaultProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'barcodes': instance.barcodes,
  'sku': instance.sku,
  'name': instance.name,
  'groupId': instance.groupId,
  'folderId': instance.folderId,
  'price': instance.price,
  'image': instance.image,
  'modifiers_group': instance.modifiersGroup,
  'currencySymbol': instance.currencySymbol,
  'description': instance.description,
  'calorieIntake': instance.calorieIntake.toJson(),
  'shortName': instance.shortName,
  'isDefault': instance.isDefault,
  'ingredientsDescription': instance.ingredientsDescription,
  'sizeDescription': instance.sizeDescription,
  'stores': instance.stores?.map((e) => e.toJson()).toList(),
  'itemCode': instance.itemCode,
  'descriptionHTML': instance.descriptionHTML,
  'quantity': instance.quantity,
  'quantityText': instance.quantityText,
  'weight': instance.weight,
  'volume': instance.volume,
};

_ProductProperty _$ProductPropertyFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_ProductProperty', json, ($defaultConvert) {
      final val = _ProductProperty(
        name: $defaultConvert('name', (v) => v as String),
        value: $defaultConvert(
          'value',
          (v) => v as String,
          readValue: readProductPropertyValue,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductPropertyToJson(_ProductProperty instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};

_CalorieIntake _$CalorieIntakeFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_CalorieIntake', json, ($defaultConvert) {
      final val = _CalorieIntake(
        fatAmount: $defaultConvert('fatAmount', (v) => (v as num?)?.toDouble()),
        proteinsAmount: $defaultConvert(
          'proteinsAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        carbohydratesAmount: $defaultConvert(
          'carbohydratesAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        energyAmount: $defaultConvert(
          'energyAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        fatFullAmount: $defaultConvert(
          'fatFullAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        proteinsFullAmount: $defaultConvert(
          'proteinsFullAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        carbohydratesFullAmount: $defaultConvert(
          'carbohydratesFullAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        energyFullAmount: $defaultConvert(
          'energyFullAmount',
          (v) => (v as num?)?.toDouble(),
        ),
        weightMeasure: $defaultConvert(
          'weightMeasure',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
        weight: $defaultConvert('weight', (v) => (v as num?)?.toDouble()),
      );
      return val;
    });

Map<String, dynamic> _$CalorieIntakeToJson(_CalorieIntake instance) =>
    <String, dynamic>{
      'fatAmount': instance.fatAmount,
      'proteinsAmount': instance.proteinsAmount,
      'carbohydratesAmount': instance.carbohydratesAmount,
      'energyAmount': instance.energyAmount,
      'fatFullAmount': instance.fatFullAmount,
      'proteinsFullAmount': instance.proteinsFullAmount,
      'carbohydratesFullAmount': instance.carbohydratesFullAmount,
      'energyFullAmount': instance.energyFullAmount,
      'weightMeasure': instance.weightMeasure,
      'weight': instance.weight,
    };

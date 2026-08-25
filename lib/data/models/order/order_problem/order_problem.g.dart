// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderProblem _$OrderProblemFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_OrderProblem',
      json,
      ($defaultConvert) {
        final val = _OrderProblem(
          problemType: $defaultConvert(
            'problem_type',
            (v) => $enumDecode(_$ProblemTypeEnumMap, v),
          ),
          problemData: $defaultConvert(
            'problem_data',
            (v) => OrderProblemData.fromJson(v as Map<String, dynamic>),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'problemType': 'problem_type',
        'problemData': 'problem_data',
      },
    );

Map<String, dynamic> _$OrderProblemToJson(_OrderProblem instance) =>
    <String, dynamic>{
      'problem_type': _$ProblemTypeEnumMap[instance.problemType]!,
      'problem_data': instance.problemData.toJson(),
    };

const _$ProblemTypeEnumMap = {ProblemType.outOfStock: 'outOfStock'};

_OrderProblemData _$OrderProblemDataFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_OrderProblemData',
      json,
      ($defaultConvert) {
        final val = _OrderProblemData(
          requestedQuantity: $defaultConvert(
            'requested_quantity',
            (v) => (v as num).toInt(),
            readValue: parseNum,
          ),
          stockQuantity: $defaultConvert(
            'stock_quantity',
            (v) => (v as num).toInt(),
            readValue: parseNum,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'requestedQuantity': 'requested_quantity',
        'stockQuantity': 'stock_quantity',
      },
    );

Map<String, dynamic> _$OrderProblemDataToJson(_OrderProblemData instance) =>
    <String, dynamic>{
      'requested_quantity': instance.requestedQuantity,
      'stock_quantity': instance.stockQuantity,
    };

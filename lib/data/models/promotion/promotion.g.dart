// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromotionShortInfo _$PromotionShortInfoFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      '_PromotionShortInfo',
      json,
      ($defaultConvert) {
        final val = _PromotionShortInfo(
          id: $defaultConvert('Id', (v) => v as String),
          name: $defaultConvert('Name', (v) => v as String),
          title: $defaultConvert(
            'Title',
            (v) => PromotionTitle.fromJson(v as Map<String, dynamic>),
          ),
          publicationPlace: $defaultConvert(
            'PublicationPlace',
            (v) => v == null
                ? const PublicationPlace(0)
                : const PublicationPlaceJsonConverter().fromJson(
                    (v as num).toInt(),
                  ),
            defaultValue: const PublicationPlace(0),
          ),
          activityType: $defaultConvert(
            'ActivityType',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionActivityTypeEnumMap,
                  v,
                  unknownValue: PromotionActivityType.unknown,
                ) ??
                PromotionActivityType.unknown,
            defaultValue: PromotionActivityType.unknown,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'name': 'Name',
        'title': 'Title',
        'publicationPlace': 'PublicationPlace',
        'activityType': 'ActivityType',
      },
    );

Map<String, dynamic> _$PromotionShortInfoToJson(_PromotionShortInfo instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Title': instance.title.toJson(),
      'PublicationPlace': const PublicationPlaceJsonConverter().toJson(
        instance.publicationPlace,
      ),
      'ActivityType': _$PromotionActivityTypeEnumMap[instance.activityType]!,
    };

const _$PromotionActivityTypeEnumMap = {
  PromotionActivityType.simple: 0,
  PromotionActivityType.survey: 1,
  PromotionActivityType.unknown: 'unknown',
};

SimplePromotion _$SimplePromotionFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      'SimplePromotion',
      json,
      ($defaultConvert) {
        final val = SimplePromotion(
          id: $defaultConvert('Id', (v) => v as String),
          name: $defaultConvert('Name', (v) => v as String),
          title: $defaultConvert(
            'Title',
            (v) => v == null
                ? const PromotionTitle()
                : PromotionTitle.fromJson(v as Map<String, dynamic>),
            defaultValue: const PromotionTitle(),
          ),
          htmlContent: $defaultConvert('HtmlContent', (v) => v as String?),
          activityStatus: $defaultConvert(
            'ActivityStatus',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionActivityStatusEnumMap,
                  v,
                  unknownValue: PromotionActivityStatus.unknown,
                ) ??
                PromotionActivityStatus.unknown,
            defaultValue: PromotionActivityStatus.unknown,
          ),
          coverageType: $defaultConvert(
            'CoverageType',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionCoverageTypeEnumMap,
                  v,
                  unknownValue: PromotionCoverageType.unknown,
                ) ??
                PromotionCoverageType.unknown,
            defaultValue: PromotionCoverageType.unknown,
          ),
          state: $defaultConvert(
            'State',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionStateEnumMap,
                  v,
                  unknownValue: PromotionState.unknown,
                ) ??
                PromotionState.unknown,
            defaultValue: PromotionState.unknown,
          ),
          expirationDate: $defaultConvert(
            'ExpirationDate',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          $type: $defaultConvert('ActivityType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'name': 'Name',
        'title': 'Title',
        'htmlContent': 'HtmlContent',
        'activityStatus': 'ActivityStatus',
        'coverageType': 'CoverageType',
        'state': 'State',
        'expirationDate': 'ExpirationDate',
        r'$type': 'ActivityType',
      },
    );

Map<String, dynamic> _$SimplePromotionToJson(
  SimplePromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'ExpirationDate': instance.expirationDate?.toIso8601String(),
  'ActivityType': instance.$type,
};

const _$PromotionActivityStatusEnumMap = {
  PromotionActivityStatus.notConducted: 0,
  PromotionActivityStatus.conducted: 1,
  PromotionActivityStatus.notConfirmed: 2,
  PromotionActivityStatus.confirmed: 3,
  PromotionActivityStatus.unknown: 'unknown',
};

const _$PromotionCoverageTypeEnumMap = {
  PromotionCoverageType.general: 0,
  PromotionCoverageType.personal: 1,
  PromotionCoverageType.unknown: 'unknown',
};

const _$PromotionStateEnumMap = {
  PromotionState.inactive: 0,
  PromotionState.active: 1,
  PromotionState.unknown: 'unknown',
};

SurveyPromotion _$SurveyPromotionFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      'SurveyPromotion',
      json,
      ($defaultConvert) {
        final val = SurveyPromotion(
          id: $defaultConvert('Id', (v) => v as String),
          name: $defaultConvert('Name', (v) => v as String),
          title: $defaultConvert(
            'Title',
            (v) => v == null
                ? const PromotionTitle()
                : PromotionTitle.fromJson(v as Map<String, dynamic>),
            defaultValue: const PromotionTitle(),
          ),
          htmlContent: $defaultConvert('HtmlContent', (v) => v as String?),
          activityStatus: $defaultConvert(
            'ActivityStatus',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionActivityStatusEnumMap,
                  v,
                  unknownValue: PromotionActivityStatus.unknown,
                ) ??
                PromotionActivityStatus.unknown,
            defaultValue: PromotionActivityStatus.unknown,
          ),
          coverageType: $defaultConvert(
            'CoverageType',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionCoverageTypeEnumMap,
                  v,
                  unknownValue: PromotionCoverageType.unknown,
                ) ??
                PromotionCoverageType.unknown,
            defaultValue: PromotionCoverageType.unknown,
          ),
          state: $defaultConvert(
            'State',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionStateEnumMap,
                  v,
                  unknownValue: PromotionState.unknown,
                ) ??
                PromotionState.unknown,
            defaultValue: PromotionState.unknown,
          ),
          activity: $defaultConvert(
            'Activity',
            (v) => SurveyActivity.fromJson(v as Map<String, dynamic>),
          ),
          activityResult: $defaultConvert(
            'ActivityResult',
            (v) => v == null
                ? null
                : SurveyActivityResult.fromJson(v as Map<String, dynamic>),
          ),
          $type: $defaultConvert('ActivityType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'name': 'Name',
        'title': 'Title',
        'htmlContent': 'HtmlContent',
        'activityStatus': 'ActivityStatus',
        'coverageType': 'CoverageType',
        'state': 'State',
        'activity': 'Activity',
        'activityResult': 'ActivityResult',
        r'$type': 'ActivityType',
      },
    );

Map<String, dynamic> _$SurveyPromotionToJson(
  SurveyPromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'Activity': instance.activity.toJson(),
  'ActivityResult': instance.activityResult?.toJson(),
  'ActivityType': instance.$type,
};

UnknownPromotion _$UnknownPromotionFromJson(Map<String, dynamic> json) =>
    $defaultCreate(
      'UnknownPromotion',
      json,
      ($defaultConvert) {
        final val = UnknownPromotion(
          id: $defaultConvert('Id', (v) => v as String),
          name: $defaultConvert('Name', (v) => v as String),
          title: $defaultConvert(
            'Title',
            (v) => v == null
                ? const PromotionTitle()
                : PromotionTitle.fromJson(v as Map<String, dynamic>),
            defaultValue: const PromotionTitle(),
          ),
          htmlContent: $defaultConvert('HtmlContent', (v) => v as String?),
          activityStatus: $defaultConvert(
            'ActivityStatus',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionActivityStatusEnumMap,
                  v,
                  unknownValue: PromotionActivityStatus.unknown,
                ) ??
                PromotionActivityStatus.unknown,
            defaultValue: PromotionActivityStatus.unknown,
          ),
          coverageType: $defaultConvert(
            'CoverageType',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionCoverageTypeEnumMap,
                  v,
                  unknownValue: PromotionCoverageType.unknown,
                ) ??
                PromotionCoverageType.unknown,
            defaultValue: PromotionCoverageType.unknown,
          ),
          state: $defaultConvert(
            'State',
            (v) =>
                $enumDecodeNullable(
                  _$PromotionStateEnumMap,
                  v,
                  unknownValue: PromotionState.unknown,
                ) ??
                PromotionState.unknown,
            defaultValue: PromotionState.unknown,
          ),
          $type: $defaultConvert('ActivityType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'name': 'Name',
        'title': 'Title',
        'htmlContent': 'HtmlContent',
        'activityStatus': 'ActivityStatus',
        'coverageType': 'CoverageType',
        'state': 'State',
        r'$type': 'ActivityType',
      },
    );

Map<String, dynamic> _$UnknownPromotionToJson(
  UnknownPromotion instance,
) => <String, dynamic>{
  'Id': instance.id,
  'Name': instance.name,
  'Title': instance.title.toJson(),
  'HtmlContent': instance.htmlContent,
  'ActivityStatus': _$PromotionActivityStatusEnumMap[instance.activityStatus]!,
  'CoverageType': _$PromotionCoverageTypeEnumMap[instance.coverageType]!,
  'State': _$PromotionStateEnumMap[instance.state]!,
  'ActivityType': instance.$type,
};

_PromotionTitle _$PromotionTitleFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_PromotionTitle', json, ($defaultConvert) {
      final val = _PromotionTitle(
        imageUrl: $defaultConvert(
          'imageUrl',
          (v) => v as String? ?? '',
          defaultValue: '',
        ),
      );
      return val;
    });

Map<String, dynamic> _$PromotionTitleToJson(_PromotionTitle instance) =>
    <String, dynamic>{'imageUrl': instance.imageUrl};

_SurveyActivity _$SurveyActivityFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_SurveyActivity', json, ($defaultConvert) {
      final val = _SurveyActivity(
        questions: $defaultConvert(
          'questions',
          (v) => (v as List<dynamic>)
              .map(
                (e) => const SurveyQuestionConverter().fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
        sendSurveyResultButtonText: $defaultConvert(
          'sendSurveyResultButtonText',
          (v) => v as String?,
        ),
        surveyAlreadyCompletedText: $defaultConvert(
          'surveyAlreadyCompletedText',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$SurveyActivityToJson(_SurveyActivity instance) =>
    <String, dynamic>{
      'questions': instance.questions
          .map(const SurveyQuestionConverter().toJson)
          .toList(),
      'sendSurveyResultButtonText': instance.sendSurveyResultButtonText,
      'surveyAlreadyCompletedText': instance.surveyAlreadyCompletedText,
    };

_SurveyActivityResult _$SurveyActivityResultFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('_SurveyActivityResult', json, ($defaultConvert) {
  final val = _SurveyActivityResult(
    answers: $defaultConvert('answers', (v) => v as Map<String, dynamic>?),
  );
  return val;
});

Map<String, dynamic> _$SurveyActivityResultToJson(
  _SurveyActivityResult instance,
) => <String, dynamic>{'answers': instance.answers};

TextSurveyQuestion _$TextSurveyQuestionFromJson(Map<String, dynamic> json) =>
    $defaultCreate('TextSurveyQuestion', json, ($defaultConvert) {
      final val = TextSurveyQuestion(
        name: $defaultConvert('name', (v) => v as String),
        title: $defaultConvert('title', (v) => v as String),
        required: $defaultConvert(
          'required',
          (v) => v as bool? ?? false,
          defaultValue: false,
        ),
        tooltip: $defaultConvert('tooltip', (v) => v as String?),
        hintText: $defaultConvert('hintText', (v) => v as String?),
        regex: $defaultConvert(
          'regex',
          (v) =>
              v == null ? null : TextRegex.fromJson(v as Map<String, dynamic>),
        ),
        defaultValue: $defaultConvert('defaultValue', (v) => v as String?),
        textInput: $defaultConvert(
          'textInput',
          (v) => const TextInputTypeConverter().fromJson(
            v as Map<String, dynamic>?,
          ),
        ),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$TextSurveyQuestionToJson(TextSurveyQuestion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'required': instance.required,
      'tooltip': instance.tooltip,
      'hintText': instance.hintText,
      'regex': instance.regex?.toJson(),
      'defaultValue': instance.defaultValue,
      'textInput': const TextInputTypeConverter().toJson(instance.textInput),
      'type': instance.$type,
    };

OptionSurveyQuestion _$OptionSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('OptionSurveyQuestion', json, ($defaultConvert) {
  final val = OptionSurveyQuestion(
    name: $defaultConvert('name', (v) => v as String),
    title: $defaultConvert('title', (v) => v as String),
    required: $defaultConvert(
      'required',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
    tooltip: $defaultConvert('tooltip', (v) => v as String?),
    options: $defaultConvert(
      'options',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    defaultValue: $defaultConvert('defaultValue', (v) => v as String?),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$OptionSurveyQuestionToJson(
  OptionSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'options': instance.options,
  'defaultValue': instance.defaultValue,
  'type': instance.$type,
};

MultipleOptionSurveyQuestion _$MultipleOptionSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('MultipleOptionSurveyQuestion', json, ($defaultConvert) {
  final val = MultipleOptionSurveyQuestion(
    name: $defaultConvert('name', (v) => v as String),
    title: $defaultConvert('title', (v) => v as String),
    required: $defaultConvert(
      'required',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
    tooltip: $defaultConvert('tooltip', (v) => v as String?),
    options: $defaultConvert(
      'options',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    minOptionsNumber: $defaultConvert(
      'minOptionsNumber',
      (v) => (v as num?)?.toInt(),
    ),
    maxOptionsNumber: $defaultConvert(
      'maxOptionsNumber',
      (v) => (v as num?)?.toInt(),
    ),
    defaultValue: $defaultConvert(
      'defaultValue',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$MultipleOptionSurveyQuestionToJson(
  MultipleOptionSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'options': instance.options,
  'minOptionsNumber': instance.minOptionsNumber,
  'maxOptionsNumber': instance.maxOptionsNumber,
  'defaultValue': instance.defaultValue,
  'type': instance.$type,
};

DateTimeSurveyQuestion _$DateTimeSurveyQuestionFromJson(
  Map<String, dynamic> json,
) => $defaultCreate('DateTimeSurveyQuestion', json, ($defaultConvert) {
  final val = DateTimeSurveyQuestion(
    name: $defaultConvert('name', (v) => v as String),
    title: $defaultConvert('title', (v) => v as String),
    required: $defaultConvert(
      'required',
      (v) => v as bool? ?? false,
      defaultValue: false,
    ),
    tooltip: $defaultConvert('tooltip', (v) => v as String?),
    minDateTime: $defaultConvert(
      'minDateTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    maxDateTime: $defaultConvert(
      'maxDateTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    defaultValue: $defaultConvert(
      'defaultValue',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    $type: $defaultConvert('type', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$DateTimeSurveyQuestionToJson(
  DateTimeSurveyQuestion instance,
) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'required': instance.required,
  'tooltip': instance.tooltip,
  'minDateTime': instance.minDateTime?.toIso8601String(),
  'maxDateTime': instance.maxDateTime?.toIso8601String(),
  'defaultValue': instance.defaultValue?.toIso8601String(),
  'type': instance.$type,
};

DateSurveyQuestion _$DateSurveyQuestionFromJson(Map<String, dynamic> json) =>
    $defaultCreate('DateSurveyQuestion', json, ($defaultConvert) {
      final val = DateSurveyQuestion(
        name: $defaultConvert('name', (v) => v as String),
        title: $defaultConvert('title', (v) => v as String),
        required: $defaultConvert(
          'required',
          (v) => v as bool? ?? false,
          defaultValue: false,
        ),
        tooltip: $defaultConvert('tooltip', (v) => v as String?),
        minDate: $defaultConvert(
          'minDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        maxDate: $defaultConvert(
          'maxDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        defaultValue: $defaultConvert(
          'defaultValue',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        $type: $defaultConvert('type', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {r'$type': 'type'});

Map<String, dynamic> _$DateSurveyQuestionToJson(DateSurveyQuestion instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'required': instance.required,
      'tooltip': instance.tooltip,
      'minDate': instance.minDate?.toIso8601String(),
      'maxDate': instance.maxDate?.toIso8601String(),
      'defaultValue': instance.defaultValue?.toIso8601String(),
      'type': instance.$type,
    };

_TextRegex _$TextRegexFromJson(Map<String, dynamic> json) =>
    $defaultCreate('_TextRegex', json, ($defaultConvert) {
      final val = _TextRegex(
        pattern: $defaultConvert('Pattern', (v) => v as String),
        options: $defaultConvert('Options', (v) => (v as num).toInt()),
      );
      return val;
    }, fieldKeyMap: const {'pattern': 'Pattern', 'options': 'Options'});

Map<String, dynamic> _$TextRegexToJson(_TextRegex instance) =>
    <String, dynamic>{'Pattern': instance.pattern, 'Options': instance.options};

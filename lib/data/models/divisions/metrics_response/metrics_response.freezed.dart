// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metrics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetricsResponse implements DiagnosticableTreeMixin {

 List<MetricItemResponse> get data;
/// Create a copy of MetricsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricsResponseCopyWith<MetricsResponse> get copyWith => _$MetricsResponseCopyWithImpl<MetricsResponse>(this as MetricsResponse, _$identity);

  /// Serializes this MetricsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MetricsResponse'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricsResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MetricsResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $MetricsResponseCopyWith<$Res>  {
  factory $MetricsResponseCopyWith(MetricsResponse value, $Res Function(MetricsResponse) _then) = _$MetricsResponseCopyWithImpl;
@useResult
$Res call({
 List<MetricItemResponse> data
});




}
/// @nodoc
class _$MetricsResponseCopyWithImpl<$Res>
    implements $MetricsResponseCopyWith<$Res> {
  _$MetricsResponseCopyWithImpl(this._self, this._then);

  final MetricsResponse _self;
  final $Res Function(MetricsResponse) _then;

/// Create a copy of MetricsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(MetricsResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MetricItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricsResponse].
extension MetricsResponsePatterns on MetricsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MetricsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MetricsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MetricItemResponse> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricsResponse() when $default != null:
return $default(_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MetricItemResponse> data)  $default,) {final _that = this;
switch (_that) {
case _MetricsResponse():
return $default(_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MetricItemResponse> data)?  $default,) {final _that = this;
switch (_that) {
case _MetricsResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _MetricsResponse with DiagnosticableTreeMixin implements MetricsResponse {
  const _MetricsResponse({required  List<MetricItemResponse> data}): _data = data;
  factory _MetricsResponse.fromJson(Map<String, dynamic> json) => _$MetricsResponseFromJson(json);

 final  List<MetricItemResponse> _data;
@override List<MetricItemResponse> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of MetricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricsResponseCopyWith<_MetricsResponse> get copyWith => __$MetricsResponseCopyWithImpl<_MetricsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MetricsResponse'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricsResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MetricsResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$MetricsResponseCopyWith<$Res> implements $MetricsResponseCopyWith<$Res> {
  factory _$MetricsResponseCopyWith(_MetricsResponse value, $Res Function(_MetricsResponse) _then) = __$MetricsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MetricItemResponse> data
});




}
/// @nodoc
class __$MetricsResponseCopyWithImpl<$Res>
    implements _$MetricsResponseCopyWith<$Res> {
  __$MetricsResponseCopyWithImpl(this._self, this._then);

  final _MetricsResponse _self;
  final $Res Function(_MetricsResponse) _then;

/// Create a copy of MetricsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_MetricsResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MetricItemResponse>,
  ));
}


}


/// @nodoc
mixin _$MetricItemResponse implements DiagnosticableTreeMixin {

 String get divisionId; String get divisionName; String get id; String get title; String get unitOfMeasurement; double? get fact; double? get lfl; double? get plan; double get difference;@JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown) DestinationTypeResponse get destinationType; String get method; dynamic get S;
/// Create a copy of MetricItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricItemResponseCopyWith<MetricItemResponse> get copyWith => _$MetricItemResponseCopyWithImpl<MetricItemResponse>(this as MetricItemResponse, _$identity);

  /// Serializes this MetricItemResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MetricItemResponse'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('unitOfMeasurement', unitOfMeasurement))..add(DiagnosticsProperty('fact', fact))..add(DiagnosticsProperty('lfl', lfl))..add(DiagnosticsProperty('plan', plan))..add(DiagnosticsProperty('difference', difference))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('method', method))..add(DiagnosticsProperty('S', S));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetricItemResponse&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unitOfMeasurement, unitOfMeasurement) || other.unitOfMeasurement == unitOfMeasurement)&&(identical(other.fact, fact) || other.fact == fact)&&(identical(other.lfl, lfl) || other.lfl == lfl)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.S, S));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,id,title,unitOfMeasurement,fact,lfl,plan,difference,destinationType,method,const DeepCollectionEquality().hash(S));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MetricItemResponse(divisionId: $divisionId, divisionName: $divisionName, id: $id, title: $title, unitOfMeasurement: $unitOfMeasurement, fact: $fact, lfl: $lfl, plan: $plan, difference: $difference, destinationType: $destinationType, method: $method, S: $S)';
}


}

/// @nodoc
abstract mixin class $MetricItemResponseCopyWith<$Res>  {
  factory $MetricItemResponseCopyWith(MetricItemResponse value, $Res Function(MetricItemResponse) _then) = _$MetricItemResponseCopyWithImpl;
@useResult
$Res call({
 String divisionId, String divisionName, String id, String title, String unitOfMeasurement, double? fact, double? lfl, double? plan, double difference,@JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown) DestinationTypeResponse destinationType, String method, dynamic S
});




}
/// @nodoc
class _$MetricItemResponseCopyWithImpl<$Res>
    implements $MetricItemResponseCopyWith<$Res> {
  _$MetricItemResponseCopyWithImpl(this._self, this._then);

  final MetricItemResponse _self;
  final $Res Function(MetricItemResponse) _then;

/// Create a copy of MetricItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionId = null,Object? divisionName = null,Object? id = null,Object? title = null,Object? unitOfMeasurement = null,Object? fact = freezed,Object? lfl = freezed,Object? plan = freezed,Object? difference = null,Object? destinationType = null,Object? method = null,Object? S = freezed,}) {
  return _then(MetricItemResponse(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasurement: null == unitOfMeasurement ? _self.unitOfMeasurement : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
as String,fact: freezed == fact ? _self.fact : fact // ignore: cast_nullable_to_non_nullable
as double?,lfl: freezed == lfl ? _self.lfl : lfl // ignore: cast_nullable_to_non_nullable
as double?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as double?,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,destinationType: null == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationTypeResponse,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,S: freezed == S ? _self.S : S // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [MetricItemResponse].
extension MetricItemResponsePatterns on MetricItemResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetricItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetricItemResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetricItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _MetricItemResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetricItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MetricItemResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double? fact,  double? lfl,  double? plan,  double difference, @JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown)  DestinationTypeResponse destinationType,  String method,  dynamic S)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetricItemResponse() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method,_that.S);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double? fact,  double? lfl,  double? plan,  double difference, @JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown)  DestinationTypeResponse destinationType,  String method,  dynamic S)  $default,) {final _that = this;
switch (_that) {
case _MetricItemResponse():
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method,_that.S);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double? fact,  double? lfl,  double? plan,  double difference, @JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown)  DestinationTypeResponse destinationType,  String method,  dynamic S)?  $default,) {final _that = this;
switch (_that) {
case _MetricItemResponse() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method,_that.S);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _MetricItemResponse with DiagnosticableTreeMixin implements MetricItemResponse {
  const _MetricItemResponse({required this.divisionId, required this.divisionName, required this.id, required this.title, required this.unitOfMeasurement, this.fact, this.lfl, this.plan, required this.difference, @JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown) required this.destinationType, required this.method, this.S});
  factory _MetricItemResponse.fromJson(Map<String, dynamic> json) => _$MetricItemResponseFromJson(json);

@override final  String divisionId;
@override final  String divisionName;
@override final  String id;
@override final  String title;
@override final  String unitOfMeasurement;
@override final  double? fact;
@override final  double? lfl;
@override final  double? plan;
@override final  double difference;
@override@JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown) final  DestinationTypeResponse destinationType;
@override final  String method;
@override final  dynamic S;

/// Create a copy of MetricItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricItemResponseCopyWith<_MetricItemResponse> get copyWith => __$MetricItemResponseCopyWithImpl<_MetricItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetricItemResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'MetricItemResponse'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('unitOfMeasurement', unitOfMeasurement))..add(DiagnosticsProperty('fact', fact))..add(DiagnosticsProperty('lfl', lfl))..add(DiagnosticsProperty('plan', plan))..add(DiagnosticsProperty('difference', difference))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('method', method))..add(DiagnosticsProperty('S', S));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetricItemResponse&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unitOfMeasurement, unitOfMeasurement) || other.unitOfMeasurement == unitOfMeasurement)&&(identical(other.fact, fact) || other.fact == fact)&&(identical(other.lfl, lfl) || other.lfl == lfl)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.method, method) || other.method == method)&&const DeepCollectionEquality().equals(other.S, S));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,id,title,unitOfMeasurement,fact,lfl,plan,difference,destinationType,method,const DeepCollectionEquality().hash(S));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'MetricItemResponse(divisionId: $divisionId, divisionName: $divisionName, id: $id, title: $title, unitOfMeasurement: $unitOfMeasurement, fact: $fact, lfl: $lfl, plan: $plan, difference: $difference, destinationType: $destinationType, method: $method, S: $S)';
}


}

/// @nodoc
abstract mixin class _$MetricItemResponseCopyWith<$Res> implements $MetricItemResponseCopyWith<$Res> {
  factory _$MetricItemResponseCopyWith(_MetricItemResponse value, $Res Function(_MetricItemResponse) _then) = __$MetricItemResponseCopyWithImpl;
@override @useResult
$Res call({
 String divisionId, String divisionName, String id, String title, String unitOfMeasurement, double? fact, double? lfl, double? plan, double difference,@JsonKey(unknownEnumValue: DestinationTypeResponse.unknown, defaultValue: DestinationTypeResponse.unknown) DestinationTypeResponse destinationType, String method, dynamic S
});




}
/// @nodoc
class __$MetricItemResponseCopyWithImpl<$Res>
    implements _$MetricItemResponseCopyWith<$Res> {
  __$MetricItemResponseCopyWithImpl(this._self, this._then);

  final _MetricItemResponse _self;
  final $Res Function(_MetricItemResponse) _then;

/// Create a copy of MetricItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? id = null,Object? title = null,Object? unitOfMeasurement = null,Object? fact = freezed,Object? lfl = freezed,Object? plan = freezed,Object? difference = null,Object? destinationType = null,Object? method = null,Object? S = freezed,}) {
  return _then(_MetricItemResponse(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasurement: null == unitOfMeasurement ? _self.unitOfMeasurement : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
as String,fact: freezed == fact ? _self.fact : fact // ignore: cast_nullable_to_non_nullable
as double?,lfl: freezed == lfl ? _self.lfl : lfl // ignore: cast_nullable_to_non_nullable
as double?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as double?,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,destinationType: null == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationTypeResponse,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,S: freezed == S ? _self.S : S // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on

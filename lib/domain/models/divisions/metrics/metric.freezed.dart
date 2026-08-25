// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Metric implements DiagnosticableTreeMixin {

 String get divisionId; String get divisionName; String get id; String get title; String get unitOfMeasurement; double get fact; double? get lfl; double? get plan; double get difference; DestinationType get destinationType; String get method;
/// Create a copy of Metric
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetricCopyWith<Metric> get copyWith => _$MetricCopyWithImpl<Metric>(this as Metric, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Metric'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('unitOfMeasurement', unitOfMeasurement))..add(DiagnosticsProperty('fact', fact))..add(DiagnosticsProperty('lfl', lfl))..add(DiagnosticsProperty('plan', plan))..add(DiagnosticsProperty('difference', difference))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('method', method));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metric&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unitOfMeasurement, unitOfMeasurement) || other.unitOfMeasurement == unitOfMeasurement)&&(identical(other.fact, fact) || other.fact == fact)&&(identical(other.lfl, lfl) || other.lfl == lfl)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,id,title,unitOfMeasurement,fact,lfl,plan,difference,destinationType,method);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Metric(divisionId: $divisionId, divisionName: $divisionName, id: $id, title: $title, unitOfMeasurement: $unitOfMeasurement, fact: $fact, lfl: $lfl, plan: $plan, difference: $difference, destinationType: $destinationType, method: $method)';
}


}

/// @nodoc
abstract mixin class $MetricCopyWith<$Res>  {
  factory $MetricCopyWith(Metric value, $Res Function(Metric) _then) = _$MetricCopyWithImpl;
@useResult
$Res call({
 String divisionId, String divisionName, String id, String title, String unitOfMeasurement, double fact, double? lfl, double? plan, double difference, DestinationType destinationType, String method
});




}
/// @nodoc
class _$MetricCopyWithImpl<$Res>
    implements $MetricCopyWith<$Res> {
  _$MetricCopyWithImpl(this._self, this._then);

  final Metric _self;
  final $Res Function(Metric) _then;

/// Create a copy of Metric
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionId = null,Object? divisionName = null,Object? id = null,Object? title = null,Object? unitOfMeasurement = null,Object? fact = null,Object? lfl = freezed,Object? plan = freezed,Object? difference = null,Object? destinationType = null,Object? method = null,}) {
  return _then(Metric(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasurement: null == unitOfMeasurement ? _self.unitOfMeasurement : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
as String,fact: null == fact ? _self.fact : fact // ignore: cast_nullable_to_non_nullable
as double,lfl: freezed == lfl ? _self.lfl : lfl // ignore: cast_nullable_to_non_nullable
as double?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as double?,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,destinationType: null == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationType,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Metric].
extension MetricPatterns on Metric {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Metric value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Metric() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Metric value)  $default,){
final _that = this;
switch (_that) {
case _Metric():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Metric value)?  $default,){
final _that = this;
switch (_that) {
case _Metric() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double fact,  double? lfl,  double? plan,  double difference,  DestinationType destinationType,  String method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Metric() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double fact,  double? lfl,  double? plan,  double difference,  DestinationType destinationType,  String method)  $default,) {final _that = this;
switch (_that) {
case _Metric():
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String divisionId,  String divisionName,  String id,  String title,  String unitOfMeasurement,  double fact,  double? lfl,  double? plan,  double difference,  DestinationType destinationType,  String method)?  $default,) {final _that = this;
switch (_that) {
case _Metric() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.id,_that.title,_that.unitOfMeasurement,_that.fact,_that.lfl,_that.plan,_that.difference,_that.destinationType,_that.method);case _:
  return null;

}
}

}

/// @nodoc


class _Metric extends Metric with DiagnosticableTreeMixin {
  const _Metric({required this.divisionId, required this.divisionName, required this.id, required this.title, required this.unitOfMeasurement, required this.fact, this.lfl, this.plan, required this.difference, required this.destinationType, required this.method}): super._();
  

@override final  String divisionId;
@override final  String divisionName;
@override final  String id;
@override final  String title;
@override final  String unitOfMeasurement;
@override final  double fact;
@override final  double? lfl;
@override final  double? plan;
@override final  double difference;
@override final  DestinationType destinationType;
@override final  String method;

/// Create a copy of Metric
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetricCopyWith<_Metric> get copyWith => __$MetricCopyWithImpl<_Metric>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Metric'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('unitOfMeasurement', unitOfMeasurement))..add(DiagnosticsProperty('fact', fact))..add(DiagnosticsProperty('lfl', lfl))..add(DiagnosticsProperty('plan', plan))..add(DiagnosticsProperty('difference', difference))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('method', method));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metric&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unitOfMeasurement, unitOfMeasurement) || other.unitOfMeasurement == unitOfMeasurement)&&(identical(other.fact, fact) || other.fact == fact)&&(identical(other.lfl, lfl) || other.lfl == lfl)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.difference, difference) || other.difference == difference)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,id,title,unitOfMeasurement,fact,lfl,plan,difference,destinationType,method);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Metric(divisionId: $divisionId, divisionName: $divisionName, id: $id, title: $title, unitOfMeasurement: $unitOfMeasurement, fact: $fact, lfl: $lfl, plan: $plan, difference: $difference, destinationType: $destinationType, method: $method)';
}


}

/// @nodoc
abstract mixin class _$MetricCopyWith<$Res> implements $MetricCopyWith<$Res> {
  factory _$MetricCopyWith(_Metric value, $Res Function(_Metric) _then) = __$MetricCopyWithImpl;
@override @useResult
$Res call({
 String divisionId, String divisionName, String id, String title, String unitOfMeasurement, double fact, double? lfl, double? plan, double difference, DestinationType destinationType, String method
});




}
/// @nodoc
class __$MetricCopyWithImpl<$Res>
    implements _$MetricCopyWith<$Res> {
  __$MetricCopyWithImpl(this._self, this._then);

  final _Metric _self;
  final $Res Function(_Metric) _then;

/// Create a copy of Metric
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? id = null,Object? title = null,Object? unitOfMeasurement = null,Object? fact = null,Object? lfl = freezed,Object? plan = freezed,Object? difference = null,Object? destinationType = null,Object? method = null,}) {
  return _then(_Metric(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,unitOfMeasurement: null == unitOfMeasurement ? _self.unitOfMeasurement : unitOfMeasurement // ignore: cast_nullable_to_non_nullable
as String,fact: null == fact ? _self.fact : fact // ignore: cast_nullable_to_non_nullable
as double,lfl: freezed == lfl ? _self.lfl : lfl // ignore: cast_nullable_to_non_nullable
as double?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as double?,difference: null == difference ? _self.difference : difference // ignore: cast_nullable_to_non_nullable
as double,destinationType: null == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationType,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

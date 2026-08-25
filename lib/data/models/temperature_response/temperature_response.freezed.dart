// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UnitTemperature implements DiagnosticableTreeMixin {

 DateTime? get createdDatetime; double? get temperature;
/// Create a copy of UnitTemperature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitTemperatureCopyWith<UnitTemperature> get copyWith => _$UnitTemperatureCopyWithImpl<UnitTemperature>(this as UnitTemperature, _$identity);

  /// Serializes this UnitTemperature to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UnitTemperature'))
    ..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('temperature', temperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitTemperature&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.temperature, temperature) || other.temperature == temperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdDatetime,temperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UnitTemperature(createdDatetime: $createdDatetime, temperature: $temperature)';
}


}

/// @nodoc
abstract mixin class $UnitTemperatureCopyWith<$Res>  {
  factory $UnitTemperatureCopyWith(UnitTemperature value, $Res Function(UnitTemperature) _then) = _$UnitTemperatureCopyWithImpl;
@useResult
$Res call({
 DateTime? createdDatetime, double? temperature
});




}
/// @nodoc
class _$UnitTemperatureCopyWithImpl<$Res>
    implements $UnitTemperatureCopyWith<$Res> {
  _$UnitTemperatureCopyWithImpl(this._self, this._then);

  final UnitTemperature _self;
  final $Res Function(UnitTemperature) _then;

/// Create a copy of UnitTemperature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdDatetime = freezed,Object? temperature = freezed,}) {
  return _then(UnitTemperature(
createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitTemperature].
extension UnitTemperaturePatterns on UnitTemperature {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitTemperature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitTemperature() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitTemperature value)  $default,){
final _that = this;
switch (_that) {
case _UnitTemperature():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitTemperature value)?  $default,){
final _that = this;
switch (_that) {
case _UnitTemperature() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? createdDatetime,  double? temperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitTemperature() when $default != null:
return $default(_that.createdDatetime,_that.temperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? createdDatetime,  double? temperature)  $default,) {final _that = this;
switch (_that) {
case _UnitTemperature():
return $default(_that.createdDatetime,_that.temperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? createdDatetime,  double? temperature)?  $default,) {final _that = this;
switch (_that) {
case _UnitTemperature() when $default != null:
return $default(_that.createdDatetime,_that.temperature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitTemperature with DiagnosticableTreeMixin implements UnitTemperature {
  const _UnitTemperature({this.createdDatetime, this.temperature});
  factory _UnitTemperature.fromJson(Map<String, dynamic> json) => _$UnitTemperatureFromJson(json);

@override final  DateTime? createdDatetime;
@override final  double? temperature;

/// Create a copy of UnitTemperature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitTemperatureCopyWith<_UnitTemperature> get copyWith => __$UnitTemperatureCopyWithImpl<_UnitTemperature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitTemperatureToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UnitTemperature'))
    ..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('temperature', temperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitTemperature&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.temperature, temperature) || other.temperature == temperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdDatetime,temperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UnitTemperature(createdDatetime: $createdDatetime, temperature: $temperature)';
}


}

/// @nodoc
abstract mixin class _$UnitTemperatureCopyWith<$Res> implements $UnitTemperatureCopyWith<$Res> {
  factory _$UnitTemperatureCopyWith(_UnitTemperature value, $Res Function(_UnitTemperature) _then) = __$UnitTemperatureCopyWithImpl;
@override @useResult
$Res call({
 DateTime? createdDatetime, double? temperature
});




}
/// @nodoc
class __$UnitTemperatureCopyWithImpl<$Res>
    implements _$UnitTemperatureCopyWith<$Res> {
  __$UnitTemperatureCopyWithImpl(this._self, this._then);

  final _UnitTemperature _self;
  final $Res Function(_UnitTemperature) _then;

/// Create a copy of UnitTemperature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdDatetime = freezed,Object? temperature = freezed,}) {
  return _then(_UnitTemperature(
createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_unit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DivisionUnit implements DiagnosticableTreeMixin {

 String get unitId; String get unitName; bool get isOpen; DateTime? get start; DateTime? get end; DivisionUnitType get type; List<Metric> get metrics; String? get address; String? get lastConnection; double? get lastTemperature;
/// Create a copy of DivisionUnit
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionUnitCopyWith<DivisionUnit> get copyWith => _$DivisionUnitCopyWithImpl<DivisionUnit>(this as DivisionUnit, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnit'))
    ..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('unitName', unitName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('metrics', metrics))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('lastConnection', lastConnection))..add(DiagnosticsProperty('lastTemperature', lastTemperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionUnit&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.metrics, metrics)&&(identical(other.address, address) || other.address == address)&&(identical(other.lastConnection, lastConnection) || other.lastConnection == lastConnection)&&(identical(other.lastTemperature, lastTemperature) || other.lastTemperature == lastTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,unitId,unitName,isOpen,start,end,type,const DeepCollectionEquality().hash(metrics),address,lastConnection,lastTemperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnit(unitId: $unitId, unitName: $unitName, isOpen: $isOpen, start: $start, end: $end, type: $type, metrics: $metrics, address: $address, lastConnection: $lastConnection, lastTemperature: $lastTemperature)';
}


}

/// @nodoc
abstract mixin class $DivisionUnitCopyWith<$Res>  {
  factory $DivisionUnitCopyWith(DivisionUnit value, $Res Function(DivisionUnit) _then) = _$DivisionUnitCopyWithImpl;
@useResult
$Res call({
 String unitId, String unitName, bool isOpen, DateTime? start, DateTime? end, DivisionUnitType type, List<Metric> metrics, String? address, String? lastConnection, double? lastTemperature
});




}
/// @nodoc
class _$DivisionUnitCopyWithImpl<$Res>
    implements $DivisionUnitCopyWith<$Res> {
  _$DivisionUnitCopyWithImpl(this._self, this._then);

  final DivisionUnit _self;
  final $Res Function(DivisionUnit) _then;

/// Create a copy of DivisionUnit
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitId = null,Object? unitName = null,Object? isOpen = null,Object? start = freezed,Object? end = freezed,Object? type = null,Object? metrics = null,Object? address = freezed,Object? lastConnection = freezed,Object? lastTemperature = freezed,}) {
  return _then(DivisionUnit(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DivisionUnitType,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<Metric>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,lastConnection: freezed == lastConnection ? _self.lastConnection : lastConnection // ignore: cast_nullable_to_non_nullable
as String?,lastTemperature: freezed == lastTemperature ? _self.lastTemperature : lastTemperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionUnit].
extension DivisionUnitPatterns on DivisionUnit {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionUnit value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionUnit() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionUnit value)  $default,){
final _that = this;
switch (_that) {
case _DivisionUnit():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionUnit value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionUnit() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  DivisionUnitType type,  List<Metric> metrics,  String? address,  String? lastConnection,  double? lastTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionUnit() when $default != null:
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.metrics,_that.address,_that.lastConnection,_that.lastTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  DivisionUnitType type,  List<Metric> metrics,  String? address,  String? lastConnection,  double? lastTemperature)  $default,) {final _that = this;
switch (_that) {
case _DivisionUnit():
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.metrics,_that.address,_that.lastConnection,_that.lastTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  DivisionUnitType type,  List<Metric> metrics,  String? address,  String? lastConnection,  double? lastTemperature)?  $default,) {final _that = this;
switch (_that) {
case _DivisionUnit() when $default != null:
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.metrics,_that.address,_that.lastConnection,_that.lastTemperature);case _:
  return null;

}
}

}

/// @nodoc


class _DivisionUnit extends DivisionUnit with DiagnosticableTreeMixin {
  const _DivisionUnit({required this.unitId, required this.unitName, required this.isOpen, required this.start, required this.end, required this.type, required  List<Metric> metrics, this.address, this.lastConnection, this.lastTemperature}): _metrics = metrics,super._();
  

@override final  String unitId;
@override final  String unitName;
@override final  bool isOpen;
@override final  DateTime? start;
@override final  DateTime? end;
@override final  DivisionUnitType type;
 final  List<Metric> _metrics;
@override List<Metric> get metrics {
  if (_metrics is EqualUnmodifiableListView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_metrics);
}

@override final  String? address;
@override final  String? lastConnection;
@override final  double? lastTemperature;

/// Create a copy of DivisionUnit
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionUnitCopyWith<_DivisionUnit> get copyWith => __$DivisionUnitCopyWithImpl<_DivisionUnit>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnit'))
    ..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('unitName', unitName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('metrics', metrics))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('lastConnection', lastConnection))..add(DiagnosticsProperty('lastTemperature', lastTemperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionUnit&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._metrics, _metrics)&&(identical(other.address, address) || other.address == address)&&(identical(other.lastConnection, lastConnection) || other.lastConnection == lastConnection)&&(identical(other.lastTemperature, lastTemperature) || other.lastTemperature == lastTemperature));
}


@override
int get hashCode => Object.hash(runtimeType,unitId,unitName,isOpen,start,end,type,const DeepCollectionEquality().hash(_metrics),address,lastConnection,lastTemperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnit(unitId: $unitId, unitName: $unitName, isOpen: $isOpen, start: $start, end: $end, type: $type, metrics: $metrics, address: $address, lastConnection: $lastConnection, lastTemperature: $lastTemperature)';
}


}

/// @nodoc
abstract mixin class _$DivisionUnitCopyWith<$Res> implements $DivisionUnitCopyWith<$Res> {
  factory _$DivisionUnitCopyWith(_DivisionUnit value, $Res Function(_DivisionUnit) _then) = __$DivisionUnitCopyWithImpl;
@override @useResult
$Res call({
 String unitId, String unitName, bool isOpen, DateTime? start, DateTime? end, DivisionUnitType type, List<Metric> metrics, String? address, String? lastConnection, double? lastTemperature
});




}
/// @nodoc
class __$DivisionUnitCopyWithImpl<$Res>
    implements _$DivisionUnitCopyWith<$Res> {
  __$DivisionUnitCopyWithImpl(this._self, this._then);

  final _DivisionUnit _self;
  final $Res Function(_DivisionUnit) _then;

/// Create a copy of DivisionUnit
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unitId = null,Object? unitName = null,Object? isOpen = null,Object? start = freezed,Object? end = freezed,Object? type = null,Object? metrics = null,Object? address = freezed,Object? lastConnection = freezed,Object? lastTemperature = freezed,}) {
  return _then(_DivisionUnit(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DivisionUnitType,metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<Metric>,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,lastConnection: freezed == lastConnection ? _self.lastConnection : lastConnection // ignore: cast_nullable_to_non_nullable
as String?,lastTemperature: freezed == lastTemperature ? _self.lastTemperature : lastTemperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

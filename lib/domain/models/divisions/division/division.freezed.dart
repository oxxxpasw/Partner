// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Division implements DiagnosticableTreeMixin {

 String get divisionId; String get divisionName; bool get isOpen; DivisionStatus get status; List<Metric> get metrics; String get menuFileName; String? get address;
/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionCopyWith<Division> get copyWith => _$DivisionCopyWithImpl<Division>(this as Division, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Division'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('metrics', metrics))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Division&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.metrics, metrics)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,isOpen,status,const DeepCollectionEquality().hash(metrics),menuFileName,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Division(divisionId: $divisionId, divisionName: $divisionName, isOpen: $isOpen, status: $status, metrics: $metrics, menuFileName: $menuFileName, address: $address)';
}


}

/// @nodoc
abstract mixin class $DivisionCopyWith<$Res>  {
  factory $DivisionCopyWith(Division value, $Res Function(Division) _then) = _$DivisionCopyWithImpl;
@useResult
$Res call({
 String divisionId, String divisionName, bool isOpen, DivisionStatus status, List<Metric> metrics, String menuFileName, String? address
});




}
/// @nodoc
class _$DivisionCopyWithImpl<$Res>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._self, this._then);

  final Division _self;
  final $Res Function(Division) _then;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionId = null,Object? divisionName = null,Object? isOpen = null,Object? status = null,Object? metrics = null,Object? menuFileName = null,Object? address = freezed,}) {
  return _then(Division(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionStatus,metrics: null == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<Metric>,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Division].
extension DivisionPatterns on Division {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Division value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Division() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Division value)  $default,){
final _that = this;
switch (_that) {
case _Division():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Division value)?  $default,){
final _that = this;
switch (_that) {
case _Division() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  bool isOpen,  DivisionStatus status,  List<Metric> metrics,  String menuFileName,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.status,_that.metrics,_that.menuFileName,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  bool isOpen,  DivisionStatus status,  List<Metric> metrics,  String menuFileName,  String? address)  $default,) {final _that = this;
switch (_that) {
case _Division():
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.status,_that.metrics,_that.menuFileName,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String divisionId,  String divisionName,  bool isOpen,  DivisionStatus status,  List<Metric> metrics,  String menuFileName,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.status,_that.metrics,_that.menuFileName,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _Division with DiagnosticableTreeMixin implements Division {
  const _Division({required this.divisionId, required this.divisionName, required this.isOpen, required this.status, required  List<Metric> metrics, required this.menuFileName, this.address}): _metrics = metrics;
  

@override final  String divisionId;
@override final  String divisionName;
@override final  bool isOpen;
@override final  DivisionStatus status;
 final  List<Metric> _metrics;
@override List<Metric> get metrics {
  if (_metrics is EqualUnmodifiableListView) return _metrics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_metrics);
}

@override final  String menuFileName;
@override final  String? address;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionCopyWith<_Division> get copyWith => __$DivisionCopyWithImpl<_Division>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Division'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('metrics', metrics))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Division&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._metrics, _metrics)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,isOpen,status,const DeepCollectionEquality().hash(_metrics),menuFileName,address);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Division(divisionId: $divisionId, divisionName: $divisionName, isOpen: $isOpen, status: $status, metrics: $metrics, menuFileName: $menuFileName, address: $address)';
}


}

/// @nodoc
abstract mixin class _$DivisionCopyWith<$Res> implements $DivisionCopyWith<$Res> {
  factory _$DivisionCopyWith(_Division value, $Res Function(_Division) _then) = __$DivisionCopyWithImpl;
@override @useResult
$Res call({
 String divisionId, String divisionName, bool isOpen, DivisionStatus status, List<Metric> metrics, String menuFileName, String? address
});




}
/// @nodoc
class __$DivisionCopyWithImpl<$Res>
    implements _$DivisionCopyWith<$Res> {
  __$DivisionCopyWithImpl(this._self, this._then);

  final _Division _self;
  final $Res Function(_Division) _then;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? isOpen = null,Object? status = null,Object? metrics = null,Object? menuFileName = null,Object? address = freezed,}) {
  return _then(_Division(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionStatus,metrics: null == metrics ? _self._metrics : metrics // ignore: cast_nullable_to_non_nullable
as List<Metric>,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

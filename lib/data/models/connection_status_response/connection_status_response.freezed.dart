// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectionStatus implements DiagnosticableTreeMixin {

 DateTime? get createdDatetime; String? get status;
/// Create a copy of ConnectionStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionStatusCopyWith<ConnectionStatus> get copyWith => _$ConnectionStatusCopyWithImpl<ConnectionStatus>(this as ConnectionStatus, _$identity);

  /// Serializes this ConnectionStatus to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ConnectionStatus'))
    ..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionStatus&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdDatetime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ConnectionStatus(createdDatetime: $createdDatetime, status: $status)';
}


}

/// @nodoc
abstract mixin class $ConnectionStatusCopyWith<$Res>  {
  factory $ConnectionStatusCopyWith(ConnectionStatus value, $Res Function(ConnectionStatus) _then) = _$ConnectionStatusCopyWithImpl;
@useResult
$Res call({
 DateTime? createdDatetime, String? status
});




}
/// @nodoc
class _$ConnectionStatusCopyWithImpl<$Res>
    implements $ConnectionStatusCopyWith<$Res> {
  _$ConnectionStatusCopyWithImpl(this._self, this._then);

  final ConnectionStatus _self;
  final $Res Function(ConnectionStatus) _then;

/// Create a copy of ConnectionStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdDatetime = freezed,Object? status = freezed,}) {
  return _then(ConnectionStatus(
createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionStatus].
extension ConnectionStatusPatterns on ConnectionStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConnectionStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectionStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConnectionStatus value)  $default,){
final _that = this;
switch (_that) {
case _ConnectionStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConnectionStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ConnectionStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? createdDatetime,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectionStatus() when $default != null:
return $default(_that.createdDatetime,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? createdDatetime,  String? status)  $default,) {final _that = this;
switch (_that) {
case _ConnectionStatus():
return $default(_that.createdDatetime,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? createdDatetime,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _ConnectionStatus() when $default != null:
return $default(_that.createdDatetime,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConnectionStatus with DiagnosticableTreeMixin implements ConnectionStatus {
  const _ConnectionStatus({this.createdDatetime, this.status});
  factory _ConnectionStatus.fromJson(Map<String, dynamic> json) => _$ConnectionStatusFromJson(json);

@override final  DateTime? createdDatetime;
@override final  String? status;

/// Create a copy of ConnectionStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionStatusCopyWith<_ConnectionStatus> get copyWith => __$ConnectionStatusCopyWithImpl<_ConnectionStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectionStatusToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ConnectionStatus'))
    ..add(DiagnosticsProperty('createdDatetime', createdDatetime))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionStatus&&(identical(other.createdDatetime, createdDatetime) || other.createdDatetime == createdDatetime)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdDatetime,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ConnectionStatus(createdDatetime: $createdDatetime, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ConnectionStatusCopyWith<$Res> implements $ConnectionStatusCopyWith<$Res> {
  factory _$ConnectionStatusCopyWith(_ConnectionStatus value, $Res Function(_ConnectionStatus) _then) = __$ConnectionStatusCopyWithImpl;
@override @useResult
$Res call({
 DateTime? createdDatetime, String? status
});




}
/// @nodoc
class __$ConnectionStatusCopyWithImpl<$Res>
    implements _$ConnectionStatusCopyWith<$Res> {
  __$ConnectionStatusCopyWithImpl(this._self, this._then);

  final _ConnectionStatus _self;
  final $Res Function(_ConnectionStatus) _then;

/// Create a copy of ConnectionStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdDatetime = freezed,Object? status = freezed,}) {
  return _then(_ConnectionStatus(
createdDatetime: freezed == createdDatetime ? _self.createdDatetime : createdDatetime // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

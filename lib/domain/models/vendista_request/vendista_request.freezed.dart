// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendista_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendistaRequest {

 String get code; DateTime get date; int get idVendista; VendistaRequestStatus get status;
/// Create a copy of VendistaRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestCopyWith<VendistaRequest> get copyWith => _$VendistaRequestCopyWithImpl<VendistaRequest>(this as VendistaRequest, _$identity);

  /// Serializes this VendistaRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequest&&(identical(other.code, code) || other.code == code)&&(identical(other.date, date) || other.date == date)&&(identical(other.idVendista, idVendista) || other.idVendista == idVendista)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,date,idVendista,status);

@override
String toString() {
  return 'VendistaRequest(code: $code, date: $date, idVendista: $idVendista, status: $status)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestCopyWith<$Res>  {
  factory $VendistaRequestCopyWith(VendistaRequest value, $Res Function(VendistaRequest) _then) = _$VendistaRequestCopyWithImpl;
@useResult
$Res call({
 String code, DateTime date, int idVendista, VendistaRequestStatus status
});




}
/// @nodoc
class _$VendistaRequestCopyWithImpl<$Res>
    implements $VendistaRequestCopyWith<$Res> {
  _$VendistaRequestCopyWithImpl(this._self, this._then);

  final VendistaRequest _self;
  final $Res Function(VendistaRequest) _then;

/// Create a copy of VendistaRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? date = null,Object? idVendista = null,Object? status = null,}) {
  return _then(VendistaRequest(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,idVendista: null == idVendista ? _self.idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [VendistaRequest].
extension VendistaRequestPatterns on VendistaRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendistaRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendistaRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendistaRequest value)  $default,){
final _that = this;
switch (_that) {
case _VendistaRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendistaRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VendistaRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  DateTime date,  int idVendista,  VendistaRequestStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendistaRequest() when $default != null:
return $default(_that.code,_that.date,_that.idVendista,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  DateTime date,  int idVendista,  VendistaRequestStatus status)  $default,) {final _that = this;
switch (_that) {
case _VendistaRequest():
return $default(_that.code,_that.date,_that.idVendista,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  DateTime date,  int idVendista,  VendistaRequestStatus status)?  $default,) {final _that = this;
switch (_that) {
case _VendistaRequest() when $default != null:
return $default(_that.code,_that.date,_that.idVendista,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendistaRequest extends VendistaRequest {
  const _VendistaRequest({required this.code, required this.date, required this.idVendista, required this.status}): super._();
  factory _VendistaRequest.fromJson(Map<String, dynamic> json) => _$VendistaRequestFromJson(json);

@override final  String code;
@override final  DateTime date;
@override final  int idVendista;
@override final  VendistaRequestStatus status;

/// Create a copy of VendistaRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendistaRequestCopyWith<_VendistaRequest> get copyWith => __$VendistaRequestCopyWithImpl<_VendistaRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendistaRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendistaRequest&&(identical(other.code, code) || other.code == code)&&(identical(other.date, date) || other.date == date)&&(identical(other.idVendista, idVendista) || other.idVendista == idVendista)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,date,idVendista,status);

@override
String toString() {
  return 'VendistaRequest(code: $code, date: $date, idVendista: $idVendista, status: $status)';
}


}

/// @nodoc
abstract mixin class _$VendistaRequestCopyWith<$Res> implements $VendistaRequestCopyWith<$Res> {
  factory _$VendistaRequestCopyWith(_VendistaRequest value, $Res Function(_VendistaRequest) _then) = __$VendistaRequestCopyWithImpl;
@override @useResult
$Res call({
 String code, DateTime date, int idVendista, VendistaRequestStatus status
});




}
/// @nodoc
class __$VendistaRequestCopyWithImpl<$Res>
    implements _$VendistaRequestCopyWith<$Res> {
  __$VendistaRequestCopyWithImpl(this._self, this._then);

  final _VendistaRequest _self;
  final $Res Function(_VendistaRequest) _then;

/// Create a copy of VendistaRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? date = null,Object? idVendista = null,Object? status = null,}) {
  return _then(_VendistaRequest(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,idVendista: null == idVendista ? _self.idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestStatus,
  ));
}


}

// dart format on

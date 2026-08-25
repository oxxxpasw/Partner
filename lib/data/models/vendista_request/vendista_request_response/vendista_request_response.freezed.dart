// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendista_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendistaRequestItemResponse implements DiagnosticableTreeMixin {

 String get code; DateTime get date; int get idVendista;@JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown) VendistaRequestStatusResponse get status;
/// Create a copy of VendistaRequestItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestItemResponseCopyWith<VendistaRequestItemResponse> get copyWith => _$VendistaRequestItemResponseCopyWithImpl<VendistaRequestItemResponse>(this as VendistaRequestItemResponse, _$identity);

  /// Serializes this VendistaRequestItemResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VendistaRequestItemResponse'))
    ..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('idVendista', idVendista))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestItemResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.date, date) || other.date == date)&&(identical(other.idVendista, idVendista) || other.idVendista == idVendista)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,date,idVendista,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VendistaRequestItemResponse(code: $code, date: $date, idVendista: $idVendista, status: $status)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestItemResponseCopyWith<$Res>  {
  factory $VendistaRequestItemResponseCopyWith(VendistaRequestItemResponse value, $Res Function(VendistaRequestItemResponse) _then) = _$VendistaRequestItemResponseCopyWithImpl;
@useResult
$Res call({
 String code, DateTime date, int idVendista,@JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown) VendistaRequestStatusResponse status
});




}
/// @nodoc
class _$VendistaRequestItemResponseCopyWithImpl<$Res>
    implements $VendistaRequestItemResponseCopyWith<$Res> {
  _$VendistaRequestItemResponseCopyWithImpl(this._self, this._then);

  final VendistaRequestItemResponse _self;
  final $Res Function(VendistaRequestItemResponse) _then;

/// Create a copy of VendistaRequestItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? date = null,Object? idVendista = null,Object? status = null,}) {
  return _then(VendistaRequestItemResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,idVendista: null == idVendista ? _self.idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestStatusResponse,
  ));
}

}


/// Adds pattern-matching-related methods to [VendistaRequestItemResponse].
extension VendistaRequestItemResponsePatterns on VendistaRequestItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendistaRequestItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendistaRequestItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendistaRequestItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendistaRequestItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  DateTime date,  int idVendista, @JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown)  VendistaRequestStatusResponse status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendistaRequestItemResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  DateTime date,  int idVendista, @JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown)  VendistaRequestStatusResponse status)  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestItemResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  DateTime date,  int idVendista, @JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown)  VendistaRequestStatusResponse status)?  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestItemResponse() when $default != null:
return $default(_that.code,_that.date,_that.idVendista,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _VendistaRequestItemResponse with DiagnosticableTreeMixin implements VendistaRequestItemResponse {
  const _VendistaRequestItemResponse({required this.code, required this.date, required this.idVendista, @JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown) required this.status});
  factory _VendistaRequestItemResponse.fromJson(Map<String, dynamic> json) => _$VendistaRequestItemResponseFromJson(json);

@override final  String code;
@override final  DateTime date;
@override final  int idVendista;
@override@JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown) final  VendistaRequestStatusResponse status;

/// Create a copy of VendistaRequestItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendistaRequestItemResponseCopyWith<_VendistaRequestItemResponse> get copyWith => __$VendistaRequestItemResponseCopyWithImpl<_VendistaRequestItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendistaRequestItemResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VendistaRequestItemResponse'))
    ..add(DiagnosticsProperty('code', code))..add(DiagnosticsProperty('date', date))..add(DiagnosticsProperty('idVendista', idVendista))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendistaRequestItemResponse&&(identical(other.code, code) || other.code == code)&&(identical(other.date, date) || other.date == date)&&(identical(other.idVendista, idVendista) || other.idVendista == idVendista)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,date,idVendista,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VendistaRequestItemResponse(code: $code, date: $date, idVendista: $idVendista, status: $status)';
}


}

/// @nodoc
abstract mixin class _$VendistaRequestItemResponseCopyWith<$Res> implements $VendistaRequestItemResponseCopyWith<$Res> {
  factory _$VendistaRequestItemResponseCopyWith(_VendistaRequestItemResponse value, $Res Function(_VendistaRequestItemResponse) _then) = __$VendistaRequestItemResponseCopyWithImpl;
@override @useResult
$Res call({
 String code, DateTime date, int idVendista,@JsonKey(unknownEnumValue: VendistaRequestStatusResponse.unknown, defaultValue: VendistaRequestStatusResponse.unknown) VendistaRequestStatusResponse status
});




}
/// @nodoc
class __$VendistaRequestItemResponseCopyWithImpl<$Res>
    implements _$VendistaRequestItemResponseCopyWith<$Res> {
  __$VendistaRequestItemResponseCopyWithImpl(this._self, this._then);

  final _VendistaRequestItemResponse _self;
  final $Res Function(_VendistaRequestItemResponse) _then;

/// Create a copy of VendistaRequestItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? date = null,Object? idVendista = null,Object? status = null,}) {
  return _then(_VendistaRequestItemResponse(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,idVendista: null == idVendista ? _self.idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestStatusResponse,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrgInfoResponse implements DiagnosticableTreeMixin {

 String? get organization;@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) OrganizationType? get entityType; String? get vat;
/// Create a copy of OrgInfoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrgInfoResponseCopyWith<OrgInfoResponse> get copyWith => _$OrgInfoResponseCopyWithImpl<OrgInfoResponse>(this as OrgInfoResponse, _$identity);

  /// Serializes this OrgInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrgInfoResponse'))
    ..add(DiagnosticsProperty('organization', organization))..add(DiagnosticsProperty('entityType', entityType))..add(DiagnosticsProperty('vat', vat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrgInfoResponse&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.vat, vat) || other.vat == vat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organization,entityType,vat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrgInfoResponse(organization: $organization, entityType: $entityType, vat: $vat)';
}


}

/// @nodoc
abstract mixin class $OrgInfoResponseCopyWith<$Res>  {
  factory $OrgInfoResponseCopyWith(OrgInfoResponse value, $Res Function(OrgInfoResponse) _then) = _$OrgInfoResponseCopyWithImpl;
@useResult
$Res call({
 String? organization,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) OrganizationType? entityType, String? vat
});




}
/// @nodoc
class _$OrgInfoResponseCopyWithImpl<$Res>
    implements $OrgInfoResponseCopyWith<$Res> {
  _$OrgInfoResponseCopyWithImpl(this._self, this._then);

  final OrgInfoResponse _self;
  final $Res Function(OrgInfoResponse) _then;

/// Create a copy of OrgInfoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organization = freezed,Object? entityType = freezed,Object? vat = freezed,}) {
  return _then(OrgInfoResponse(
organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrgInfoResponse].
extension OrgInfoResponsePatterns on OrgInfoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrgInfoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrgInfoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrgInfoResponse value)  $default,){
final _that = this;
switch (_that) {
case _OrgInfoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrgInfoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OrgInfoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? organization, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  OrganizationType? entityType,  String? vat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrgInfoResponse() when $default != null:
return $default(_that.organization,_that.entityType,_that.vat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? organization, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  OrganizationType? entityType,  String? vat)  $default,) {final _that = this;
switch (_that) {
case _OrgInfoResponse():
return $default(_that.organization,_that.entityType,_that.vat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? organization, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  OrganizationType? entityType,  String? vat)?  $default,) {final _that = this;
switch (_that) {
case _OrgInfoResponse() when $default != null:
return $default(_that.organization,_that.entityType,_that.vat);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _OrgInfoResponse with DiagnosticableTreeMixin implements OrgInfoResponse {
  const _OrgInfoResponse({this.organization, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.entityType, this.vat});
  factory _OrgInfoResponse.fromJson(Map<String, dynamic> json) => _$OrgInfoResponseFromJson(json);

@override final  String? organization;
@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  OrganizationType? entityType;
@override final  String? vat;

/// Create a copy of OrgInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrgInfoResponseCopyWith<_OrgInfoResponse> get copyWith => __$OrgInfoResponseCopyWithImpl<_OrgInfoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrgInfoResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrgInfoResponse'))
    ..add(DiagnosticsProperty('organization', organization))..add(DiagnosticsProperty('entityType', entityType))..add(DiagnosticsProperty('vat', vat));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrgInfoResponse&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.vat, vat) || other.vat == vat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,organization,entityType,vat);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrgInfoResponse(organization: $organization, entityType: $entityType, vat: $vat)';
}


}

/// @nodoc
abstract mixin class _$OrgInfoResponseCopyWith<$Res> implements $OrgInfoResponseCopyWith<$Res> {
  factory _$OrgInfoResponseCopyWith(_OrgInfoResponse value, $Res Function(_OrgInfoResponse) _then) = __$OrgInfoResponseCopyWithImpl;
@override @useResult
$Res call({
 String? organization,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) OrganizationType? entityType, String? vat
});




}
/// @nodoc
class __$OrgInfoResponseCopyWithImpl<$Res>
    implements _$OrgInfoResponseCopyWith<$Res> {
  __$OrgInfoResponseCopyWithImpl(this._self, this._then);

  final _OrgInfoResponse _self;
  final $Res Function(_OrgInfoResponse) _then;

/// Create a copy of OrgInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organization = freezed,Object? entityType = freezed,Object? vat = freezed,}) {
  return _then(_OrgInfoResponse(
organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

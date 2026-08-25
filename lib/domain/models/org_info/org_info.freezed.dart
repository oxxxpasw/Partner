// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrgInfo {

 String? get organization; OrganizationType? get entityType; String? get vat;
/// Create a copy of OrgInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrgInfoCopyWith<OrgInfo> get copyWith => _$OrgInfoCopyWithImpl<OrgInfo>(this as OrgInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrgInfo&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.vat, vat) || other.vat == vat));
}


@override
int get hashCode => Object.hash(runtimeType,organization,entityType,vat);

@override
String toString() {
  return 'OrgInfo(organization: $organization, entityType: $entityType, vat: $vat)';
}


}

/// @nodoc
abstract mixin class $OrgInfoCopyWith<$Res>  {
  factory $OrgInfoCopyWith(OrgInfo value, $Res Function(OrgInfo) _then) = _$OrgInfoCopyWithImpl;
@useResult
$Res call({
 String? organization, OrganizationType? entityType, String? vat
});




}
/// @nodoc
class _$OrgInfoCopyWithImpl<$Res>
    implements $OrgInfoCopyWith<$Res> {
  _$OrgInfoCopyWithImpl(this._self, this._then);

  final OrgInfo _self;
  final $Res Function(OrgInfo) _then;

/// Create a copy of OrgInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organization = freezed,Object? entityType = freezed,Object? vat = freezed,}) {
  return _then(OrgInfo(
organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrgInfo].
extension OrgInfoPatterns on OrgInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrgInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrgInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrgInfo value)  $default,){
final _that = this;
switch (_that) {
case _OrgInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrgInfo value)?  $default,){
final _that = this;
switch (_that) {
case _OrgInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? organization,  OrganizationType? entityType,  String? vat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrgInfo() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? organization,  OrganizationType? entityType,  String? vat)  $default,) {final _that = this;
switch (_that) {
case _OrgInfo():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? organization,  OrganizationType? entityType,  String? vat)?  $default,) {final _that = this;
switch (_that) {
case _OrgInfo() when $default != null:
return $default(_that.organization,_that.entityType,_that.vat);case _:
  return null;

}
}

}

/// @nodoc


class _OrgInfo implements OrgInfo {
  const _OrgInfo({this.organization, this.entityType, this.vat});
  

@override final  String? organization;
@override final  OrganizationType? entityType;
@override final  String? vat;

/// Create a copy of OrgInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrgInfoCopyWith<_OrgInfo> get copyWith => __$OrgInfoCopyWithImpl<_OrgInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrgInfo&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.vat, vat) || other.vat == vat));
}


@override
int get hashCode => Object.hash(runtimeType,organization,entityType,vat);

@override
String toString() {
  return 'OrgInfo(organization: $organization, entityType: $entityType, vat: $vat)';
}


}

/// @nodoc
abstract mixin class _$OrgInfoCopyWith<$Res> implements $OrgInfoCopyWith<$Res> {
  factory _$OrgInfoCopyWith(_OrgInfo value, $Res Function(_OrgInfo) _then) = __$OrgInfoCopyWithImpl;
@override @useResult
$Res call({
 String? organization, OrganizationType? entityType, String? vat
});




}
/// @nodoc
class __$OrgInfoCopyWithImpl<$Res>
    implements _$OrgInfoCopyWith<$Res> {
  __$OrgInfoCopyWithImpl(this._self, this._then);

  final _OrgInfo _self;
  final $Res Function(_OrgInfo) _then;

/// Create a copy of OrgInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organization = freezed,Object? entityType = freezed,Object? vat = freezed,}) {
  return _then(_OrgInfo(
organization: freezed == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String?,entityType: freezed == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

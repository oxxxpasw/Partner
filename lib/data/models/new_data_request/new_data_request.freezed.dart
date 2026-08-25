// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewDataRequest implements DiagnosticableTreeMixin {

 OrganizationType get entityType; String get organization; String get vat; String get city; String get address; String get locationName; double get latitude; double get longitude; String get requestId;
/// Create a copy of NewDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewDataRequestCopyWith<NewDataRequest> get copyWith => _$NewDataRequestCopyWithImpl<NewDataRequest>(this as NewDataRequest, _$identity);

  /// Serializes this NewDataRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NewDataRequest'))
    ..add(DiagnosticsProperty('entityType', entityType))..add(DiagnosticsProperty('organization', organization))..add(DiagnosticsProperty('vat', vat))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('locationName', locationName))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('requestId', requestId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewDataRequest&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.vat, vat) || other.vat == vat)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entityType,organization,vat,city,address,locationName,latitude,longitude,requestId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NewDataRequest(entityType: $entityType, organization: $organization, vat: $vat, city: $city, address: $address, locationName: $locationName, latitude: $latitude, longitude: $longitude, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class $NewDataRequestCopyWith<$Res>  {
  factory $NewDataRequestCopyWith(NewDataRequest value, $Res Function(NewDataRequest) _then) = _$NewDataRequestCopyWithImpl;
@useResult
$Res call({
 OrganizationType entityType, String organization, String vat, String city, String address, String locationName, double latitude, double longitude, String requestId
});




}
/// @nodoc
class _$NewDataRequestCopyWithImpl<$Res>
    implements $NewDataRequestCopyWith<$Res> {
  _$NewDataRequestCopyWithImpl(this._self, this._then);

  final NewDataRequest _self;
  final $Res Function(NewDataRequest) _then;

/// Create a copy of NewDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entityType = null,Object? organization = null,Object? vat = null,Object? city = null,Object? address = null,Object? locationName = null,Object? latitude = null,Object? longitude = null,Object? requestId = null,}) {
  return _then(NewDataRequest(
entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType,organization: null == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String,vat: null == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NewDataRequest].
extension NewDataRequestPatterns on NewDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _NewDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _NewDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrganizationType entityType,  String organization,  String vat,  String city,  String address,  String locationName,  double latitude,  double longitude,  String requestId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewDataRequest() when $default != null:
return $default(_that.entityType,_that.organization,_that.vat,_that.city,_that.address,_that.locationName,_that.latitude,_that.longitude,_that.requestId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrganizationType entityType,  String organization,  String vat,  String city,  String address,  String locationName,  double latitude,  double longitude,  String requestId)  $default,) {final _that = this;
switch (_that) {
case _NewDataRequest():
return $default(_that.entityType,_that.organization,_that.vat,_that.city,_that.address,_that.locationName,_that.latitude,_that.longitude,_that.requestId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrganizationType entityType,  String organization,  String vat,  String city,  String address,  String locationName,  double latitude,  double longitude,  String requestId)?  $default,) {final _that = this;
switch (_that) {
case _NewDataRequest() when $default != null:
return $default(_that.entityType,_that.organization,_that.vat,_that.city,_that.address,_that.locationName,_that.latitude,_that.longitude,_that.requestId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _NewDataRequest with DiagnosticableTreeMixin implements NewDataRequest {
  const _NewDataRequest({required this.entityType, required this.organization, required this.vat, required this.city, required this.address, required this.locationName, required this.latitude, required this.longitude, required this.requestId});
  

@override final  OrganizationType entityType;
@override final  String organization;
@override final  String vat;
@override final  String city;
@override final  String address;
@override final  String locationName;
@override final  double latitude;
@override final  double longitude;
@override final  String requestId;

/// Create a copy of NewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewDataRequestCopyWith<_NewDataRequest> get copyWith => __$NewDataRequestCopyWithImpl<_NewDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewDataRequestToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NewDataRequest'))
    ..add(DiagnosticsProperty('entityType', entityType))..add(DiagnosticsProperty('organization', organization))..add(DiagnosticsProperty('vat', vat))..add(DiagnosticsProperty('city', city))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('locationName', locationName))..add(DiagnosticsProperty('latitude', latitude))..add(DiagnosticsProperty('longitude', longitude))..add(DiagnosticsProperty('requestId', requestId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewDataRequest&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.organization, organization) || other.organization == organization)&&(identical(other.vat, vat) || other.vat == vat)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.requestId, requestId) || other.requestId == requestId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,entityType,organization,vat,city,address,locationName,latitude,longitude,requestId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NewDataRequest(entityType: $entityType, organization: $organization, vat: $vat, city: $city, address: $address, locationName: $locationName, latitude: $latitude, longitude: $longitude, requestId: $requestId)';
}


}

/// @nodoc
abstract mixin class _$NewDataRequestCopyWith<$Res> implements $NewDataRequestCopyWith<$Res> {
  factory _$NewDataRequestCopyWith(_NewDataRequest value, $Res Function(_NewDataRequest) _then) = __$NewDataRequestCopyWithImpl;
@override @useResult
$Res call({
 OrganizationType entityType, String organization, String vat, String city, String address, String locationName, double latitude, double longitude, String requestId
});




}
/// @nodoc
class __$NewDataRequestCopyWithImpl<$Res>
    implements _$NewDataRequestCopyWith<$Res> {
  __$NewDataRequestCopyWithImpl(this._self, this._then);

  final _NewDataRequest _self;
  final $Res Function(_NewDataRequest) _then;

/// Create a copy of NewDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entityType = null,Object? organization = null,Object? vat = null,Object? city = null,Object? address = null,Object? locationName = null,Object? latitude = null,Object? longitude = null,Object? requestId = null,}) {
  return _then(_NewDataRequest(
entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as OrganizationType,organization: null == organization ? _self.organization : organization // ignore: cast_nullable_to_non_nullable
as String,vat: null == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

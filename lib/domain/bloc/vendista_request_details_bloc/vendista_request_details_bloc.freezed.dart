// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendista_request_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VendistaRequestDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsEvent()';
}


}

/// @nodoc
class $VendistaRequestDetailsEventCopyWith<$Res>  {
$VendistaRequestDetailsEventCopyWith(VendistaRequestDetailsEvent _, $Res Function(VendistaRequestDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [VendistaRequestDetailsEvent].
extension VendistaRequestDetailsEventPatterns on VendistaRequestDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _RegionChanged value)?  regionChanged,TResult Function( _DistrictChanged value)?  districtChanged,TResult Function( _ConfirmPressed value)?  confirmPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _RegionChanged() when regionChanged != null:
return regionChanged(_that);case _DistrictChanged() when districtChanged != null:
return districtChanged(_that);case _ConfirmPressed() when confirmPressed != null:
return confirmPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _RegionChanged value)  regionChanged,required TResult Function( _DistrictChanged value)  districtChanged,required TResult Function( _ConfirmPressed value)  confirmPressed,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _RegionChanged():
return regionChanged(_that);case _DistrictChanged():
return districtChanged(_that);case _ConfirmPressed():
return confirmPressed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _RegionChanged value)?  regionChanged,TResult? Function( _DistrictChanged value)?  districtChanged,TResult? Function( _ConfirmPressed value)?  confirmPressed,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _RegionChanged() when regionChanged != null:
return regionChanged(_that);case _DistrictChanged() when districtChanged != null:
return districtChanged(_that);case _ConfirmPressed() when confirmPressed != null:
return confirmPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( String region)?  regionChanged,TResult Function( String district)?  districtChanged,TResult Function( OrganizationType organizationType,  String organizationName,  String vat,  String city,  String address,  String name,  double latitude,  double longitude)?  confirmPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _RegionChanged() when regionChanged != null:
return regionChanged(_that.region);case _DistrictChanged() when districtChanged != null:
return districtChanged(_that.district);case _ConfirmPressed() when confirmPressed != null:
return confirmPressed(_that.organizationType,_that.organizationName,_that.vat,_that.city,_that.address,_that.name,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( String region)  regionChanged,required TResult Function( String district)  districtChanged,required TResult Function( OrganizationType organizationType,  String organizationName,  String vat,  String city,  String address,  String name,  double latitude,  double longitude)  confirmPressed,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _RegionChanged():
return regionChanged(_that.region);case _DistrictChanged():
return districtChanged(_that.district);case _ConfirmPressed():
return confirmPressed(_that.organizationType,_that.organizationName,_that.vat,_that.city,_that.address,_that.name,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( String region)?  regionChanged,TResult? Function( String district)?  districtChanged,TResult? Function( OrganizationType organizationType,  String organizationName,  String vat,  String city,  String address,  String name,  double latitude,  double longitude)?  confirmPressed,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _RegionChanged() when regionChanged != null:
return regionChanged(_that.region);case _DistrictChanged() when districtChanged != null:
return districtChanged(_that.district);case _ConfirmPressed() when confirmPressed != null:
return confirmPressed(_that.organizationType,_that.organizationName,_that.vat,_that.city,_that.address,_that.name,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements VendistaRequestDetailsEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsEvent.init()';
}


}




/// @nodoc


class _RegionChanged implements VendistaRequestDetailsEvent {
  const _RegionChanged(this.region);
  

 final  String region;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegionChangedCopyWith<_RegionChanged> get copyWith => __$RegionChangedCopyWithImpl<_RegionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegionChanged&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,region);

@override
String toString() {
  return 'VendistaRequestDetailsEvent.regionChanged(region: $region)';
}


}

/// @nodoc
abstract mixin class _$RegionChangedCopyWith<$Res> implements $VendistaRequestDetailsEventCopyWith<$Res> {
  factory _$RegionChangedCopyWith(_RegionChanged value, $Res Function(_RegionChanged) _then) = __$RegionChangedCopyWithImpl;
@useResult
$Res call({
 String region
});




}
/// @nodoc
class __$RegionChangedCopyWithImpl<$Res>
    implements _$RegionChangedCopyWith<$Res> {
  __$RegionChangedCopyWithImpl(this._self, this._then);

  final _RegionChanged _self;
  final $Res Function(_RegionChanged) _then;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? region = null,}) {
  return _then(_RegionChanged(
null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DistrictChanged implements VendistaRequestDetailsEvent {
  const _DistrictChanged(this.district);
  

 final  String district;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistrictChangedCopyWith<_DistrictChanged> get copyWith => __$DistrictChangedCopyWithImpl<_DistrictChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DistrictChanged&&(identical(other.district, district) || other.district == district));
}


@override
int get hashCode => Object.hash(runtimeType,district);

@override
String toString() {
  return 'VendistaRequestDetailsEvent.districtChanged(district: $district)';
}


}

/// @nodoc
abstract mixin class _$DistrictChangedCopyWith<$Res> implements $VendistaRequestDetailsEventCopyWith<$Res> {
  factory _$DistrictChangedCopyWith(_DistrictChanged value, $Res Function(_DistrictChanged) _then) = __$DistrictChangedCopyWithImpl;
@useResult
$Res call({
 String district
});




}
/// @nodoc
class __$DistrictChangedCopyWithImpl<$Res>
    implements _$DistrictChangedCopyWith<$Res> {
  __$DistrictChangedCopyWithImpl(this._self, this._then);

  final _DistrictChanged _self;
  final $Res Function(_DistrictChanged) _then;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? district = null,}) {
  return _then(_DistrictChanged(
null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ConfirmPressed implements VendistaRequestDetailsEvent {
  const _ConfirmPressed({required this.organizationType, required this.organizationName, required this.vat, required this.city, required this.address, required this.name, required this.latitude, required this.longitude});
  

 final  OrganizationType organizationType;
 final  String organizationName;
 final  String vat;
 final  String city;
 final  String address;
 final  String name;
 final  double latitude;
 final  double longitude;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmPressedCopyWith<_ConfirmPressed> get copyWith => __$ConfirmPressedCopyWithImpl<_ConfirmPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmPressed&&(identical(other.organizationType, organizationType) || other.organizationType == organizationType)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.vat, vat) || other.vat == vat)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,organizationType,organizationName,vat,city,address,name,latitude,longitude);

@override
String toString() {
  return 'VendistaRequestDetailsEvent.confirmPressed(organizationType: $organizationType, organizationName: $organizationName, vat: $vat, city: $city, address: $address, name: $name, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$ConfirmPressedCopyWith<$Res> implements $VendistaRequestDetailsEventCopyWith<$Res> {
  factory _$ConfirmPressedCopyWith(_ConfirmPressed value, $Res Function(_ConfirmPressed) _then) = __$ConfirmPressedCopyWithImpl;
@useResult
$Res call({
 OrganizationType organizationType, String organizationName, String vat, String city, String address, String name, double latitude, double longitude
});




}
/// @nodoc
class __$ConfirmPressedCopyWithImpl<$Res>
    implements _$ConfirmPressedCopyWith<$Res> {
  __$ConfirmPressedCopyWithImpl(this._self, this._then);

  final _ConfirmPressed _self;
  final $Res Function(_ConfirmPressed) _then;

/// Create a copy of VendistaRequestDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? organizationType = null,Object? organizationName = null,Object? vat = null,Object? city = null,Object? address = null,Object? name = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_ConfirmPressed(
organizationType: null == organizationType ? _self.organizationType : organizationType // ignore: cast_nullable_to_non_nullable
as OrganizationType,organizationName: null == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String,vat: null == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$VendistaRequestDetailsState {

 VendistaRequestDetailsStatus get status; List<String>? get cities; List<String>? get districts; List<String>? get regions; List<String>? get vat; VendistaRequest? get request; OrgInfo? get orgInfo; String? get selectedRegion; String? get selectedDistrict;
/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestDetailsStateCopyWith<VendistaRequestDetailsState> get copyWith => _$VendistaRequestDetailsStateCopyWithImpl<VendistaRequestDetailsState>(this as VendistaRequestDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.cities, cities)&&const DeepCollectionEquality().equals(other.districts, districts)&&const DeepCollectionEquality().equals(other.regions, regions)&&const DeepCollectionEquality().equals(other.vat, vat)&&(identical(other.request, request) || other.request == request)&&(identical(other.orgInfo, orgInfo) || other.orgInfo == orgInfo)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.selectedDistrict, selectedDistrict) || other.selectedDistrict == selectedDistrict));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(cities),const DeepCollectionEquality().hash(districts),const DeepCollectionEquality().hash(regions),const DeepCollectionEquality().hash(vat),request,orgInfo,selectedRegion,selectedDistrict);

@override
String toString() {
  return 'VendistaRequestDetailsState(status: $status, cities: $cities, districts: $districts, regions: $regions, vat: $vat, request: $request, orgInfo: $orgInfo, selectedRegion: $selectedRegion, selectedDistrict: $selectedDistrict)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestDetailsStateCopyWith<$Res>  {
  factory $VendistaRequestDetailsStateCopyWith(VendistaRequestDetailsState value, $Res Function(VendistaRequestDetailsState) _then) = _$VendistaRequestDetailsStateCopyWithImpl;
@useResult
$Res call({
 VendistaRequestDetailsStatus status, List<String>? cities, List<String>? districts, List<String>? regions, List<String>? vat, VendistaRequest? request, OrgInfo? orgInfo, String? selectedRegion, String? selectedDistrict
});


$VendistaRequestCopyWith<$Res>? get request;$OrgInfoCopyWith<$Res>? get orgInfo;

}
/// @nodoc
class _$VendistaRequestDetailsStateCopyWithImpl<$Res>
    implements $VendistaRequestDetailsStateCopyWith<$Res> {
  _$VendistaRequestDetailsStateCopyWithImpl(this._self, this._then);

  final VendistaRequestDetailsState _self;
  final $Res Function(VendistaRequestDetailsState) _then;

/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? cities = freezed,Object? districts = freezed,Object? regions = freezed,Object? vat = freezed,Object? request = freezed,Object? orgInfo = freezed,Object? selectedRegion = freezed,Object? selectedDistrict = freezed,}) {
  return _then(VendistaRequestDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestDetailsStatus,cities: freezed == cities ? _self.cities : cities // ignore: cast_nullable_to_non_nullable
as List<String>?,districts: freezed == districts ? _self.districts : districts // ignore: cast_nullable_to_non_nullable
as List<String>?,regions: freezed == regions ? _self.regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>?,vat: freezed == vat ? _self.vat : vat // ignore: cast_nullable_to_non_nullable
as List<String>?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as VendistaRequest?,orgInfo: freezed == orgInfo ? _self.orgInfo : orgInfo // ignore: cast_nullable_to_non_nullable
as OrgInfo?,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as String?,selectedDistrict: freezed == selectedDistrict ? _self.selectedDistrict : selectedDistrict // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendistaRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $VendistaRequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgInfoCopyWith<$Res>? get orgInfo {
    if (_self.orgInfo == null) {
    return null;
  }

  return $OrgInfoCopyWith<$Res>(_self.orgInfo!, (value) {
    return _then(_self.copyWith(orgInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [VendistaRequestDetailsState].
extension VendistaRequestDetailsStatePatterns on VendistaRequestDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendistaRequestDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendistaRequestDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendistaRequestDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendistaRequestDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VendistaRequestDetailsStatus status,  List<String>? cities,  List<String>? districts,  List<String>? regions,  List<String>? vat,  VendistaRequest? request,  OrgInfo? orgInfo,  String? selectedRegion,  String? selectedDistrict)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendistaRequestDetailsState() when $default != null:
return $default(_that.status,_that.cities,_that.districts,_that.regions,_that.vat,_that.request,_that.orgInfo,_that.selectedRegion,_that.selectedDistrict);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VendistaRequestDetailsStatus status,  List<String>? cities,  List<String>? districts,  List<String>? regions,  List<String>? vat,  VendistaRequest? request,  OrgInfo? orgInfo,  String? selectedRegion,  String? selectedDistrict)  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestDetailsState():
return $default(_that.status,_that.cities,_that.districts,_that.regions,_that.vat,_that.request,_that.orgInfo,_that.selectedRegion,_that.selectedDistrict);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VendistaRequestDetailsStatus status,  List<String>? cities,  List<String>? districts,  List<String>? regions,  List<String>? vat,  VendistaRequest? request,  OrgInfo? orgInfo,  String? selectedRegion,  String? selectedDistrict)?  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestDetailsState() when $default != null:
return $default(_that.status,_that.cities,_that.districts,_that.regions,_that.vat,_that.request,_that.orgInfo,_that.selectedRegion,_that.selectedDistrict);case _:
  return null;

}
}

}

/// @nodoc


class _VendistaRequestDetailsState implements VendistaRequestDetailsState {
  const _VendistaRequestDetailsState({this.status = VendistaRequestDetailsStatus.init,  List<String>? cities,  List<String>? districts,  List<String>? regions,  List<String>? vat, this.request, this.orgInfo, this.selectedRegion, this.selectedDistrict}): _cities = cities,_districts = districts,_regions = regions,_vat = vat;
  

@override@JsonKey() final  VendistaRequestDetailsStatus status;
 final  List<String>? _cities;
@override List<String>? get cities {
  final value = _cities;
  if (value == null) return null;
  if (_cities is EqualUnmodifiableListView) return _cities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _districts;
@override List<String>? get districts {
  final value = _districts;
  if (value == null) return null;
  if (_districts is EqualUnmodifiableListView) return _districts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _regions;
@override List<String>? get regions {
  final value = _regions;
  if (value == null) return null;
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _vat;
@override List<String>? get vat {
  final value = _vat;
  if (value == null) return null;
  if (_vat is EqualUnmodifiableListView) return _vat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  VendistaRequest? request;
@override final  OrgInfo? orgInfo;
@override final  String? selectedRegion;
@override final  String? selectedDistrict;

/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendistaRequestDetailsStateCopyWith<_VendistaRequestDetailsState> get copyWith => __$VendistaRequestDetailsStateCopyWithImpl<_VendistaRequestDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendistaRequestDetailsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._cities, _cities)&&const DeepCollectionEquality().equals(other._districts, _districts)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._vat, _vat)&&(identical(other.request, request) || other.request == request)&&(identical(other.orgInfo, orgInfo) || other.orgInfo == orgInfo)&&(identical(other.selectedRegion, selectedRegion) || other.selectedRegion == selectedRegion)&&(identical(other.selectedDistrict, selectedDistrict) || other.selectedDistrict == selectedDistrict));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_cities),const DeepCollectionEquality().hash(_districts),const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_vat),request,orgInfo,selectedRegion,selectedDistrict);

@override
String toString() {
  return 'VendistaRequestDetailsState(status: $status, cities: $cities, districts: $districts, regions: $regions, vat: $vat, request: $request, orgInfo: $orgInfo, selectedRegion: $selectedRegion, selectedDistrict: $selectedDistrict)';
}


}

/// @nodoc
abstract mixin class _$VendistaRequestDetailsStateCopyWith<$Res> implements $VendistaRequestDetailsStateCopyWith<$Res> {
  factory _$VendistaRequestDetailsStateCopyWith(_VendistaRequestDetailsState value, $Res Function(_VendistaRequestDetailsState) _then) = __$VendistaRequestDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 VendistaRequestDetailsStatus status, List<String>? cities, List<String>? districts, List<String>? regions, List<String>? vat, VendistaRequest? request, OrgInfo? orgInfo, String? selectedRegion, String? selectedDistrict
});


@override $VendistaRequestCopyWith<$Res>? get request;@override $OrgInfoCopyWith<$Res>? get orgInfo;

}
/// @nodoc
class __$VendistaRequestDetailsStateCopyWithImpl<$Res>
    implements _$VendistaRequestDetailsStateCopyWith<$Res> {
  __$VendistaRequestDetailsStateCopyWithImpl(this._self, this._then);

  final _VendistaRequestDetailsState _self;
  final $Res Function(_VendistaRequestDetailsState) _then;

/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? cities = freezed,Object? districts = freezed,Object? regions = freezed,Object? vat = freezed,Object? request = freezed,Object? orgInfo = freezed,Object? selectedRegion = freezed,Object? selectedDistrict = freezed,}) {
  return _then(_VendistaRequestDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestDetailsStatus,cities: freezed == cities ? _self._cities : cities // ignore: cast_nullable_to_non_nullable
as List<String>?,districts: freezed == districts ? _self._districts : districts // ignore: cast_nullable_to_non_nullable
as List<String>?,regions: freezed == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>?,vat: freezed == vat ? _self._vat : vat // ignore: cast_nullable_to_non_nullable
as List<String>?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as VendistaRequest?,orgInfo: freezed == orgInfo ? _self.orgInfo : orgInfo // ignore: cast_nullable_to_non_nullable
as OrgInfo?,selectedRegion: freezed == selectedRegion ? _self.selectedRegion : selectedRegion // ignore: cast_nullable_to_non_nullable
as String?,selectedDistrict: freezed == selectedDistrict ? _self.selectedDistrict : selectedDistrict // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendistaRequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $VendistaRequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of VendistaRequestDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgInfoCopyWith<$Res>? get orgInfo {
    if (_self.orgInfo == null) {
    return null;
  }

  return $OrgInfoCopyWith<$Res>(_self.orgInfo!, (value) {
    return _then(_self.copyWith(orgInfo: value));
  });
}
}

/// @nodoc
mixin _$VendistaRequestDetailsSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsSr()';
}


}

/// @nodoc
class $VendistaRequestDetailsSrCopyWith<$Res>  {
$VendistaRequestDetailsSrCopyWith(VendistaRequestDetailsSr _, $Res Function(VendistaRequestDetailsSr) __);
}


/// Adds pattern-matching-related methods to [VendistaRequestDetailsSr].
extension VendistaRequestDetailsSrPatterns on VendistaRequestDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VendistaRequestDetailsErrorSr value)?  error,TResult Function( VendistaRequestDetailsShowLoadingOverlaySr value)?  showLoadingOverlay,TResult Function( VendistaRequestDetailsHideLoadingOverlaySr value)?  hideLoadingOverlay,TResult Function( VendistaRequestDetailsSuccessSr value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr() when error != null:
return error(_that);case VendistaRequestDetailsShowLoadingOverlaySr() when showLoadingOverlay != null:
return showLoadingOverlay(_that);case VendistaRequestDetailsHideLoadingOverlaySr() when hideLoadingOverlay != null:
return hideLoadingOverlay(_that);case VendistaRequestDetailsSuccessSr() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VendistaRequestDetailsErrorSr value)  error,required TResult Function( VendistaRequestDetailsShowLoadingOverlaySr value)  showLoadingOverlay,required TResult Function( VendistaRequestDetailsHideLoadingOverlaySr value)  hideLoadingOverlay,required TResult Function( VendistaRequestDetailsSuccessSr value)  success,}){
final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr():
return error(_that);case VendistaRequestDetailsShowLoadingOverlaySr():
return showLoadingOverlay(_that);case VendistaRequestDetailsHideLoadingOverlaySr():
return hideLoadingOverlay(_that);case VendistaRequestDetailsSuccessSr():
return success(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VendistaRequestDetailsErrorSr value)?  error,TResult? Function( VendistaRequestDetailsShowLoadingOverlaySr value)?  showLoadingOverlay,TResult? Function( VendistaRequestDetailsHideLoadingOverlaySr value)?  hideLoadingOverlay,TResult? Function( VendistaRequestDetailsSuccessSr value)?  success,}){
final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr() when error != null:
return error(_that);case VendistaRequestDetailsShowLoadingOverlaySr() when showLoadingOverlay != null:
return showLoadingOverlay(_that);case VendistaRequestDetailsHideLoadingOverlaySr() when hideLoadingOverlay != null:
return hideLoadingOverlay(_that);case VendistaRequestDetailsSuccessSr() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function()?  showLoadingOverlay,TResult Function()?  hideLoadingOverlay,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr() when error != null:
return error(_that.message);case VendistaRequestDetailsShowLoadingOverlaySr() when showLoadingOverlay != null:
return showLoadingOverlay();case VendistaRequestDetailsHideLoadingOverlaySr() when hideLoadingOverlay != null:
return hideLoadingOverlay();case VendistaRequestDetailsSuccessSr() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function()  showLoadingOverlay,required TResult Function()  hideLoadingOverlay,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr():
return error(_that.message);case VendistaRequestDetailsShowLoadingOverlaySr():
return showLoadingOverlay();case VendistaRequestDetailsHideLoadingOverlaySr():
return hideLoadingOverlay();case VendistaRequestDetailsSuccessSr():
return success();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function()?  showLoadingOverlay,TResult? Function()?  hideLoadingOverlay,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case VendistaRequestDetailsErrorSr() when error != null:
return error(_that.message);case VendistaRequestDetailsShowLoadingOverlaySr() when showLoadingOverlay != null:
return showLoadingOverlay();case VendistaRequestDetailsHideLoadingOverlaySr() when hideLoadingOverlay != null:
return hideLoadingOverlay();case VendistaRequestDetailsSuccessSr() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class VendistaRequestDetailsErrorSr implements VendistaRequestDetailsSr {
  const VendistaRequestDetailsErrorSr(this.message);
  

 final  String message;

/// Create a copy of VendistaRequestDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestDetailsErrorSrCopyWith<VendistaRequestDetailsErrorSr> get copyWith => _$VendistaRequestDetailsErrorSrCopyWithImpl<VendistaRequestDetailsErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VendistaRequestDetailsSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestDetailsErrorSrCopyWith<$Res> implements $VendistaRequestDetailsSrCopyWith<$Res> {
  factory $VendistaRequestDetailsErrorSrCopyWith(VendistaRequestDetailsErrorSr value, $Res Function(VendistaRequestDetailsErrorSr) _then) = _$VendistaRequestDetailsErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$VendistaRequestDetailsErrorSrCopyWithImpl<$Res>
    implements $VendistaRequestDetailsErrorSrCopyWith<$Res> {
  _$VendistaRequestDetailsErrorSrCopyWithImpl(this._self, this._then);

  final VendistaRequestDetailsErrorSr _self;
  final $Res Function(VendistaRequestDetailsErrorSr) _then;

/// Create a copy of VendistaRequestDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VendistaRequestDetailsErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VendistaRequestDetailsShowLoadingOverlaySr implements VendistaRequestDetailsSr {
  const VendistaRequestDetailsShowLoadingOverlaySr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsShowLoadingOverlaySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsSr.showLoadingOverlay()';
}


}




/// @nodoc


class VendistaRequestDetailsHideLoadingOverlaySr implements VendistaRequestDetailsSr {
  const VendistaRequestDetailsHideLoadingOverlaySr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsHideLoadingOverlaySr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsSr.hideLoadingOverlay()';
}


}




/// @nodoc


class VendistaRequestDetailsSuccessSr implements VendistaRequestDetailsSr {
  const VendistaRequestDetailsSuccessSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestDetailsSuccessSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestDetailsSr.success()';
}


}




// dart format on

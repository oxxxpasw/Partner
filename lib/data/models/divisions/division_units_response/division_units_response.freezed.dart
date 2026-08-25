// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_units_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DivisionUnitsResponse implements DiagnosticableTreeMixin {

 DivisionResponse get division; List<DivisionUnitItemResponse> get data;
/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionUnitsResponseCopyWith<DivisionUnitsResponse> get copyWith => _$DivisionUnitsResponseCopyWithImpl<DivisionUnitsResponse>(this as DivisionUnitsResponse, _$identity);

  /// Serializes this DivisionUnitsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnitsResponse'))
    ..add(DiagnosticsProperty('division', division))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionUnitsResponse&&(identical(other.division, division) || other.division == division)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,division,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnitsResponse(division: $division, data: $data)';
}


}

/// @nodoc
abstract mixin class $DivisionUnitsResponseCopyWith<$Res>  {
  factory $DivisionUnitsResponseCopyWith(DivisionUnitsResponse value, $Res Function(DivisionUnitsResponse) _then) = _$DivisionUnitsResponseCopyWithImpl;
@useResult
$Res call({
 DivisionResponse division, List<DivisionUnitItemResponse> data
});


$DivisionResponseCopyWith<$Res> get division;

}
/// @nodoc
class _$DivisionUnitsResponseCopyWithImpl<$Res>
    implements $DivisionUnitsResponseCopyWith<$Res> {
  _$DivisionUnitsResponseCopyWithImpl(this._self, this._then);

  final DivisionUnitsResponse _self;
  final $Res Function(DivisionUnitsResponse) _then;

/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? division = null,Object? data = null,}) {
  return _then(DivisionUnitsResponse(
division: null == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as DivisionResponse,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DivisionUnitItemResponse>,
  ));
}
/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionResponseCopyWith<$Res> get division {
  
  return $DivisionResponseCopyWith<$Res>(_self.division, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}


/// Adds pattern-matching-related methods to [DivisionUnitsResponse].
extension DivisionUnitsResponsePatterns on DivisionUnitsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionUnitsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionUnitsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionUnitsResponse value)  $default,){
final _that = this;
switch (_that) {
case _DivisionUnitsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionUnitsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionUnitsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DivisionResponse division,  List<DivisionUnitItemResponse> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionUnitsResponse() when $default != null:
return $default(_that.division,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DivisionResponse division,  List<DivisionUnitItemResponse> data)  $default,) {final _that = this;
switch (_that) {
case _DivisionUnitsResponse():
return $default(_that.division,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DivisionResponse division,  List<DivisionUnitItemResponse> data)?  $default,) {final _that = this;
switch (_that) {
case _DivisionUnitsResponse() when $default != null:
return $default(_that.division,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _DivisionUnitsResponse with DiagnosticableTreeMixin implements DivisionUnitsResponse {
  const _DivisionUnitsResponse({required this.division, required  List<DivisionUnitItemResponse> data}): _data = data;
  factory _DivisionUnitsResponse.fromJson(Map<String, dynamic> json) => _$DivisionUnitsResponseFromJson(json);

@override final  DivisionResponse division;
 final  List<DivisionUnitItemResponse> _data;
@override List<DivisionUnitItemResponse> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionUnitsResponseCopyWith<_DivisionUnitsResponse> get copyWith => __$DivisionUnitsResponseCopyWithImpl<_DivisionUnitsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionUnitsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnitsResponse'))
    ..add(DiagnosticsProperty('division', division))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionUnitsResponse&&(identical(other.division, division) || other.division == division)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,division,const DeepCollectionEquality().hash(_data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnitsResponse(division: $division, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DivisionUnitsResponseCopyWith<$Res> implements $DivisionUnitsResponseCopyWith<$Res> {
  factory _$DivisionUnitsResponseCopyWith(_DivisionUnitsResponse value, $Res Function(_DivisionUnitsResponse) _then) = __$DivisionUnitsResponseCopyWithImpl;
@override @useResult
$Res call({
 DivisionResponse division, List<DivisionUnitItemResponse> data
});


@override $DivisionResponseCopyWith<$Res> get division;

}
/// @nodoc
class __$DivisionUnitsResponseCopyWithImpl<$Res>
    implements _$DivisionUnitsResponseCopyWith<$Res> {
  __$DivisionUnitsResponseCopyWithImpl(this._self, this._then);

  final _DivisionUnitsResponse _self;
  final $Res Function(_DivisionUnitsResponse) _then;

/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? division = null,Object? data = null,}) {
  return _then(_DivisionUnitsResponse(
division: null == division ? _self.division : division // ignore: cast_nullable_to_non_nullable
as DivisionResponse,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DivisionUnitItemResponse>,
  ));
}

/// Create a copy of DivisionUnitsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionResponseCopyWith<$Res> get division {
  
  return $DivisionResponseCopyWith<$Res>(_self.division, (value) {
    return _then(_self.copyWith(division: value));
  });
}
}


/// @nodoc
mixin _$DivisionUnitItemResponse implements DiagnosticableTreeMixin {

 String get unitId; String get unitName; bool get isOpen; DateTime? get start; DateTime? get end; String get type; String? get address;@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) DestinationTypeResponse? get destinationType; String? get lastConnection; double? get lastTemperature;
/// Create a copy of DivisionUnitItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionUnitItemResponseCopyWith<DivisionUnitItemResponse> get copyWith => _$DivisionUnitItemResponseCopyWithImpl<DivisionUnitItemResponse>(this as DivisionUnitItemResponse, _$identity);

  /// Serializes this DivisionUnitItemResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnitItemResponse'))
    ..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('unitName', unitName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('lastConnection', lastConnection))..add(DiagnosticsProperty('lastTemperature', lastTemperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionUnitItemResponse&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.lastConnection, lastConnection) || other.lastConnection == lastConnection)&&(identical(other.lastTemperature, lastTemperature) || other.lastTemperature == lastTemperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitId,unitName,isOpen,start,end,type,address,destinationType,lastConnection,lastTemperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnitItemResponse(unitId: $unitId, unitName: $unitName, isOpen: $isOpen, start: $start, end: $end, type: $type, address: $address, destinationType: $destinationType, lastConnection: $lastConnection, lastTemperature: $lastTemperature)';
}


}

/// @nodoc
abstract mixin class $DivisionUnitItemResponseCopyWith<$Res>  {
  factory $DivisionUnitItemResponseCopyWith(DivisionUnitItemResponse value, $Res Function(DivisionUnitItemResponse) _then) = _$DivisionUnitItemResponseCopyWithImpl;
@useResult
$Res call({
 String unitId, String unitName, bool isOpen, DateTime? start, DateTime? end, String type, String? address,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) DestinationTypeResponse? destinationType, String? lastConnection, double? lastTemperature
});




}
/// @nodoc
class _$DivisionUnitItemResponseCopyWithImpl<$Res>
    implements $DivisionUnitItemResponseCopyWith<$Res> {
  _$DivisionUnitItemResponseCopyWithImpl(this._self, this._then);

  final DivisionUnitItemResponse _self;
  final $Res Function(DivisionUnitItemResponse) _then;

/// Create a copy of DivisionUnitItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unitId = null,Object? unitName = null,Object? isOpen = null,Object? start = freezed,Object? end = freezed,Object? type = null,Object? address = freezed,Object? destinationType = freezed,Object? lastConnection = freezed,Object? lastTemperature = freezed,}) {
  return _then(DivisionUnitItemResponse(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,destinationType: freezed == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationTypeResponse?,lastConnection: freezed == lastConnection ? _self.lastConnection : lastConnection // ignore: cast_nullable_to_non_nullable
as String?,lastTemperature: freezed == lastTemperature ? _self.lastTemperature : lastTemperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionUnitItemResponse].
extension DivisionUnitItemResponsePatterns on DivisionUnitItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionUnitItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionUnitItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionUnitItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _DivisionUnitItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionUnitItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionUnitItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  String type,  String? address, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  DestinationTypeResponse? destinationType,  String? lastConnection,  double? lastTemperature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionUnitItemResponse() when $default != null:
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.address,_that.destinationType,_that.lastConnection,_that.lastTemperature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  String type,  String? address, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  DestinationTypeResponse? destinationType,  String? lastConnection,  double? lastTemperature)  $default,) {final _that = this;
switch (_that) {
case _DivisionUnitItemResponse():
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.address,_that.destinationType,_that.lastConnection,_that.lastTemperature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String unitId,  String unitName,  bool isOpen,  DateTime? start,  DateTime? end,  String type,  String? address, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)  DestinationTypeResponse? destinationType,  String? lastConnection,  double? lastTemperature)?  $default,) {final _that = this;
switch (_that) {
case _DivisionUnitItemResponse() when $default != null:
return $default(_that.unitId,_that.unitName,_that.isOpen,_that.start,_that.end,_that.type,_that.address,_that.destinationType,_that.lastConnection,_that.lastTemperature);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _DivisionUnitItemResponse with DiagnosticableTreeMixin implements DivisionUnitItemResponse {
  const _DivisionUnitItemResponse({required this.unitId, required this.unitName, required this.isOpen, required this.start, required this.end, required this.type, this.address, @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) this.destinationType, this.lastConnection, this.lastTemperature});
  factory _DivisionUnitItemResponse.fromJson(Map<String, dynamic> json) => _$DivisionUnitItemResponseFromJson(json);

@override final  String unitId;
@override final  String unitName;
@override final  bool isOpen;
@override final  DateTime? start;
@override final  DateTime? end;
@override final  String type;
@override final  String? address;
@override@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) final  DestinationTypeResponse? destinationType;
@override final  String? lastConnection;
@override final  double? lastTemperature;

/// Create a copy of DivisionUnitItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionUnitItemResponseCopyWith<_DivisionUnitItemResponse> get copyWith => __$DivisionUnitItemResponseCopyWithImpl<_DivisionUnitItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionUnitItemResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionUnitItemResponse'))
    ..add(DiagnosticsProperty('unitId', unitId))..add(DiagnosticsProperty('unitName', unitName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('start', start))..add(DiagnosticsProperty('end', end))..add(DiagnosticsProperty('type', type))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('destinationType', destinationType))..add(DiagnosticsProperty('lastConnection', lastConnection))..add(DiagnosticsProperty('lastTemperature', lastTemperature));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionUnitItemResponse&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.unitName, unitName) || other.unitName == unitName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address)&&(identical(other.destinationType, destinationType) || other.destinationType == destinationType)&&(identical(other.lastConnection, lastConnection) || other.lastConnection == lastConnection)&&(identical(other.lastTemperature, lastTemperature) || other.lastTemperature == lastTemperature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,unitId,unitName,isOpen,start,end,type,address,destinationType,lastConnection,lastTemperature);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionUnitItemResponse(unitId: $unitId, unitName: $unitName, isOpen: $isOpen, start: $start, end: $end, type: $type, address: $address, destinationType: $destinationType, lastConnection: $lastConnection, lastTemperature: $lastTemperature)';
}


}

/// @nodoc
abstract mixin class _$DivisionUnitItemResponseCopyWith<$Res> implements $DivisionUnitItemResponseCopyWith<$Res> {
  factory _$DivisionUnitItemResponseCopyWith(_DivisionUnitItemResponse value, $Res Function(_DivisionUnitItemResponse) _then) = __$DivisionUnitItemResponseCopyWithImpl;
@override @useResult
$Res call({
 String unitId, String unitName, bool isOpen, DateTime? start, DateTime? end, String type, String? address,@JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue) DestinationTypeResponse? destinationType, String? lastConnection, double? lastTemperature
});




}
/// @nodoc
class __$DivisionUnitItemResponseCopyWithImpl<$Res>
    implements _$DivisionUnitItemResponseCopyWith<$Res> {
  __$DivisionUnitItemResponseCopyWithImpl(this._self, this._then);

  final _DivisionUnitItemResponse _self;
  final $Res Function(_DivisionUnitItemResponse) _then;

/// Create a copy of DivisionUnitItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unitId = null,Object? unitName = null,Object? isOpen = null,Object? start = freezed,Object? end = freezed,Object? type = null,Object? address = freezed,Object? destinationType = freezed,Object? lastConnection = freezed,Object? lastTemperature = freezed,}) {
  return _then(_DivisionUnitItemResponse(
unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,unitName: null == unitName ? _self.unitName : unitName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as DateTime?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as DateTime?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,destinationType: freezed == destinationType ? _self.destinationType : destinationType // ignore: cast_nullable_to_non_nullable
as DestinationTypeResponse?,lastConnection: freezed == lastConnection ? _self.lastConnection : lastConnection // ignore: cast_nullable_to_non_nullable
as String?,lastTemperature: freezed == lastTemperature ? _self.lastTemperature : lastTemperature // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

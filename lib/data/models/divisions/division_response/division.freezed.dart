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
mixin _$DivisionsResponse implements DiagnosticableTreeMixin {

 List<DivisionResponse> get data;
/// Create a copy of DivisionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionsResponseCopyWith<DivisionsResponse> get copyWith => _$DivisionsResponseCopyWithImpl<DivisionsResponse>(this as DivisionsResponse, _$identity);

  /// Serializes this DivisionsResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionsResponse'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionsResponse&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionsResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class $DivisionsResponseCopyWith<$Res>  {
  factory $DivisionsResponseCopyWith(DivisionsResponse value, $Res Function(DivisionsResponse) _then) = _$DivisionsResponseCopyWithImpl;
@useResult
$Res call({
 List<DivisionResponse> data
});




}
/// @nodoc
class _$DivisionsResponseCopyWithImpl<$Res>
    implements $DivisionsResponseCopyWith<$Res> {
  _$DivisionsResponseCopyWithImpl(this._self, this._then);

  final DivisionsResponse _self;
  final $Res Function(DivisionsResponse) _then;

/// Create a copy of DivisionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(DivisionsResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DivisionResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionsResponse].
extension DivisionsResponsePatterns on DivisionsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _DivisionsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DivisionResponse> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionsResponse() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DivisionResponse> data)  $default,) {final _that = this;
switch (_that) {
case _DivisionsResponse():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DivisionResponse> data)?  $default,) {final _that = this;
switch (_that) {
case _DivisionsResponse() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _DivisionsResponse with DiagnosticableTreeMixin implements DivisionsResponse {
  const _DivisionsResponse({required  List<DivisionResponse> data}): _data = data;
  factory _DivisionsResponse.fromJson(Map<String, dynamic> json) => _$DivisionsResponseFromJson(json);

 final  List<DivisionResponse> _data;
@override List<DivisionResponse> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DivisionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionsResponseCopyWith<_DivisionsResponse> get copyWith => __$DivisionsResponseCopyWithImpl<_DivisionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionsResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionsResponse'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionsResponse&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionsResponse(data: $data)';
}


}

/// @nodoc
abstract mixin class _$DivisionsResponseCopyWith<$Res> implements $DivisionsResponseCopyWith<$Res> {
  factory _$DivisionsResponseCopyWith(_DivisionsResponse value, $Res Function(_DivisionsResponse) _then) = __$DivisionsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<DivisionResponse> data
});




}
/// @nodoc
class __$DivisionsResponseCopyWithImpl<$Res>
    implements _$DivisionsResponseCopyWith<$Res> {
  __$DivisionsResponseCopyWithImpl(this._self, this._then);

  final _DivisionsResponse _self;
  final $Res Function(_DivisionsResponse) _then;

/// Create a copy of DivisionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_DivisionsResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DivisionResponse>,
  ));
}


}


/// @nodoc
mixin _$DivisionResponse implements DiagnosticableTreeMixin {

 String get divisionId; String get divisionName; bool get isOpen; String get menuFileName; String? get address;@JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled) DivisionResponseStatus get status;
/// Create a copy of DivisionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionResponseCopyWith<DivisionResponse> get copyWith => _$DivisionResponseCopyWithImpl<DivisionResponse>(this as DivisionResponse, _$identity);

  /// Serializes this DivisionResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionResponse'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionResponse&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,isOpen,menuFileName,address,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionResponse(divisionId: $divisionId, divisionName: $divisionName, isOpen: $isOpen, menuFileName: $menuFileName, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class $DivisionResponseCopyWith<$Res>  {
  factory $DivisionResponseCopyWith(DivisionResponse value, $Res Function(DivisionResponse) _then) = _$DivisionResponseCopyWithImpl;
@useResult
$Res call({
 String divisionId, String divisionName, bool isOpen, String menuFileName, String? address,@JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled) DivisionResponseStatus status
});




}
/// @nodoc
class _$DivisionResponseCopyWithImpl<$Res>
    implements $DivisionResponseCopyWith<$Res> {
  _$DivisionResponseCopyWithImpl(this._self, this._then);

  final DivisionResponse _self;
  final $Res Function(DivisionResponse) _then;

/// Create a copy of DivisionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionId = null,Object? divisionName = null,Object? isOpen = null,Object? menuFileName = null,Object? address = freezed,Object? status = null,}) {
  return _then(DivisionResponse(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionResponseStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionResponse].
extension DivisionResponsePatterns on DivisionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionResponse value)  $default,){
final _that = this;
switch (_that) {
case _DivisionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  bool isOpen,  String menuFileName,  String? address, @JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled)  DivisionResponseStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionResponse() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.menuFileName,_that.address,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String divisionId,  String divisionName,  bool isOpen,  String menuFileName,  String? address, @JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled)  DivisionResponseStatus status)  $default,) {final _that = this;
switch (_that) {
case _DivisionResponse():
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.menuFileName,_that.address,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String divisionId,  String divisionName,  bool isOpen,  String menuFileName,  String? address, @JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled)  DivisionResponseStatus status)?  $default,) {final _that = this;
switch (_that) {
case _DivisionResponse() when $default != null:
return $default(_that.divisionId,_that.divisionName,_that.isOpen,_that.menuFileName,_that.address,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _DivisionResponse with DiagnosticableTreeMixin implements DivisionResponse {
  const _DivisionResponse({required this.divisionId, required this.divisionName, required this.isOpen, required this.menuFileName, this.address, @JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled) this.status = DivisionResponseStatus.disabled});
  factory _DivisionResponse.fromJson(Map<String, dynamic> json) => _$DivisionResponseFromJson(json);

@override final  String divisionId;
@override final  String divisionName;
@override final  bool isOpen;
@override final  String menuFileName;
@override final  String? address;
@override@JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled) final  DivisionResponseStatus status;

/// Create a copy of DivisionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionResponseCopyWith<_DivisionResponse> get copyWith => __$DivisionResponseCopyWithImpl<_DivisionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DivisionResponse'))
    ..add(DiagnosticsProperty('divisionId', divisionId))..add(DiagnosticsProperty('divisionName', divisionName))..add(DiagnosticsProperty('isOpen', isOpen))..add(DiagnosticsProperty('menuFileName', menuFileName))..add(DiagnosticsProperty('address', address))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionResponse&&(identical(other.divisionId, divisionId) || other.divisionId == divisionId)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.menuFileName, menuFileName) || other.menuFileName == menuFileName)&&(identical(other.address, address) || other.address == address)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionId,divisionName,isOpen,menuFileName,address,status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DivisionResponse(divisionId: $divisionId, divisionName: $divisionName, isOpen: $isOpen, menuFileName: $menuFileName, address: $address, status: $status)';
}


}

/// @nodoc
abstract mixin class _$DivisionResponseCopyWith<$Res> implements $DivisionResponseCopyWith<$Res> {
  factory _$DivisionResponseCopyWith(_DivisionResponse value, $Res Function(_DivisionResponse) _then) = __$DivisionResponseCopyWithImpl;
@override @useResult
$Res call({
 String divisionId, String divisionName, bool isOpen, String menuFileName, String? address,@JsonKey(name: 'borderStatus', unknownEnumValue: DivisionResponseStatus.disabled) DivisionResponseStatus status
});




}
/// @nodoc
class __$DivisionResponseCopyWithImpl<$Res>
    implements _$DivisionResponseCopyWith<$Res> {
  __$DivisionResponseCopyWithImpl(this._self, this._then);

  final _DivisionResponse _self;
  final $Res Function(_DivisionResponse) _then;

/// Create a copy of DivisionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionId = null,Object? divisionName = null,Object? isOpen = null,Object? menuFileName = null,Object? address = freezed,Object? status = null,}) {
  return _then(_DivisionResponse(
divisionId: null == divisionId ? _self.divisionId : divisionId // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,menuFileName: null == menuFileName ? _self.menuFileName : menuFileName // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DivisionResponseStatus,
  ));
}


}

// dart format on

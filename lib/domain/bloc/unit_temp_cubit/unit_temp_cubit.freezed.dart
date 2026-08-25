// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_temp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnitTempState {

 UnitTempStateStatus get status; List<UnitTemperature>? get temperatures;
/// Create a copy of UnitTempState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitTempStateCopyWith<UnitTempState> get copyWith => _$UnitTempStateCopyWithImpl<UnitTempState>(this as UnitTempState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitTempState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.temperatures, temperatures));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(temperatures));

@override
String toString() {
  return 'UnitTempState(status: $status, temperatures: $temperatures)';
}


}

/// @nodoc
abstract mixin class $UnitTempStateCopyWith<$Res>  {
  factory $UnitTempStateCopyWith(UnitTempState value, $Res Function(UnitTempState) _then) = _$UnitTempStateCopyWithImpl;
@useResult
$Res call({
 UnitTempStateStatus status, List<UnitTemperature>? temperatures
});




}
/// @nodoc
class _$UnitTempStateCopyWithImpl<$Res>
    implements $UnitTempStateCopyWith<$Res> {
  _$UnitTempStateCopyWithImpl(this._self, this._then);

  final UnitTempState _self;
  final $Res Function(UnitTempState) _then;

/// Create a copy of UnitTempState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? temperatures = freezed,}) {
  return _then(UnitTempState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitTempStateStatus,temperatures: freezed == temperatures ? _self.temperatures : temperatures // ignore: cast_nullable_to_non_nullable
as List<UnitTemperature>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitTempState].
extension UnitTempStatePatterns on UnitTempState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitTempState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitTempState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitTempState value)  $default,){
final _that = this;
switch (_that) {
case _UnitTempState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitTempState value)?  $default,){
final _that = this;
switch (_that) {
case _UnitTempState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UnitTempStateStatus status,  List<UnitTemperature>? temperatures)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitTempState() when $default != null:
return $default(_that.status,_that.temperatures);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UnitTempStateStatus status,  List<UnitTemperature>? temperatures)  $default,) {final _that = this;
switch (_that) {
case _UnitTempState():
return $default(_that.status,_that.temperatures);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UnitTempStateStatus status,  List<UnitTemperature>? temperatures)?  $default,) {final _that = this;
switch (_that) {
case _UnitTempState() when $default != null:
return $default(_that.status,_that.temperatures);case _:
  return null;

}
}

}

/// @nodoc


class _UnitTempState implements UnitTempState {
  const _UnitTempState({this.status = UnitTempStateStatus.init,  List<UnitTemperature>? temperatures}): _temperatures = temperatures;
  

@override@JsonKey() final  UnitTempStateStatus status;
 final  List<UnitTemperature>? _temperatures;
@override List<UnitTemperature>? get temperatures {
  final value = _temperatures;
  if (value == null) return null;
  if (_temperatures is EqualUnmodifiableListView) return _temperatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UnitTempState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitTempStateCopyWith<_UnitTempState> get copyWith => __$UnitTempStateCopyWithImpl<_UnitTempState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitTempState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._temperatures, _temperatures));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_temperatures));

@override
String toString() {
  return 'UnitTempState(status: $status, temperatures: $temperatures)';
}


}

/// @nodoc
abstract mixin class _$UnitTempStateCopyWith<$Res> implements $UnitTempStateCopyWith<$Res> {
  factory _$UnitTempStateCopyWith(_UnitTempState value, $Res Function(_UnitTempState) _then) = __$UnitTempStateCopyWithImpl;
@override @useResult
$Res call({
 UnitTempStateStatus status, List<UnitTemperature>? temperatures
});




}
/// @nodoc
class __$UnitTempStateCopyWithImpl<$Res>
    implements _$UnitTempStateCopyWith<$Res> {
  __$UnitTempStateCopyWithImpl(this._self, this._then);

  final _UnitTempState _self;
  final $Res Function(_UnitTempState) _then;

/// Create a copy of UnitTempState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? temperatures = freezed,}) {
  return _then(_UnitTempState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitTempStateStatus,temperatures: freezed == temperatures ? _self._temperatures : temperatures // ignore: cast_nullable_to_non_nullable
as List<UnitTemperature>?,
  ));
}


}

/// @nodoc
mixin _$UnitTempSr {

 String get message;
/// Create a copy of UnitTempSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitTempSrCopyWith<UnitTempSr> get copyWith => _$UnitTempSrCopyWithImpl<UnitTempSr>(this as UnitTempSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitTempSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UnitTempSr(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnitTempSrCopyWith<$Res>  {
  factory $UnitTempSrCopyWith(UnitTempSr value, $Res Function(UnitTempSr) _then) = _$UnitTempSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnitTempSrCopyWithImpl<$Res>
    implements $UnitTempSrCopyWith<$Res> {
  _$UnitTempSrCopyWithImpl(this._self, this._then);

  final UnitTempSr _self;
  final $Res Function(UnitTempSr) _then;

/// Create a copy of UnitTempSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(UnitTempSr.error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitTempSr].
extension UnitTempSrPatterns on UnitTempSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnitTempErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnitTempErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnitTempErrorSr value)  error,}){
final _that = this;
switch (_that) {
case UnitTempErrorSr():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnitTempErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case UnitTempErrorSr() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnitTempErrorSr() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case UnitTempErrorSr():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case UnitTempErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UnitTempErrorSr implements UnitTempSr {
  const UnitTempErrorSr(this.message);
  

@override final  String message;

/// Create a copy of UnitTempSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitTempErrorSrCopyWith<UnitTempErrorSr> get copyWith => _$UnitTempErrorSrCopyWithImpl<UnitTempErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitTempErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UnitTempSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnitTempErrorSrCopyWith<$Res> implements $UnitTempSrCopyWith<$Res> {
  factory $UnitTempErrorSrCopyWith(UnitTempErrorSr value, $Res Function(UnitTempErrorSr) _then) = _$UnitTempErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnitTempErrorSrCopyWithImpl<$Res>
    implements $UnitTempErrorSrCopyWith<$Res> {
  _$UnitTempErrorSrCopyWithImpl(this._self, this._then);

  final UnitTempErrorSr _self;
  final $Res Function(UnitTempErrorSr) _then;

/// Create a copy of UnitTempSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UnitTempErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_events_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnitEventsState {

 UnitEventsStateStatus get status; List<ConnectionStatus>? get statuses;
/// Create a copy of UnitEventsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitEventsStateCopyWith<UnitEventsState> get copyWith => _$UnitEventsStateCopyWithImpl<UnitEventsState>(this as UnitEventsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitEventsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.statuses, statuses));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(statuses));

@override
String toString() {
  return 'UnitEventsState(status: $status, statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class $UnitEventsStateCopyWith<$Res>  {
  factory $UnitEventsStateCopyWith(UnitEventsState value, $Res Function(UnitEventsState) _then) = _$UnitEventsStateCopyWithImpl;
@useResult
$Res call({
 UnitEventsStateStatus status, List<ConnectionStatus>? statuses
});




}
/// @nodoc
class _$UnitEventsStateCopyWithImpl<$Res>
    implements $UnitEventsStateCopyWith<$Res> {
  _$UnitEventsStateCopyWithImpl(this._self, this._then);

  final UnitEventsState _self;
  final $Res Function(UnitEventsState) _then;

/// Create a copy of UnitEventsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statuses = freezed,}) {
  return _then(UnitEventsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitEventsStateStatus,statuses: freezed == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<ConnectionStatus>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitEventsState].
extension UnitEventsStatePatterns on UnitEventsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitEventsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitEventsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitEventsState value)  $default,){
final _that = this;
switch (_that) {
case _UnitEventsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitEventsState value)?  $default,){
final _that = this;
switch (_that) {
case _UnitEventsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UnitEventsStateStatus status,  List<ConnectionStatus>? statuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitEventsState() when $default != null:
return $default(_that.status,_that.statuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UnitEventsStateStatus status,  List<ConnectionStatus>? statuses)  $default,) {final _that = this;
switch (_that) {
case _UnitEventsState():
return $default(_that.status,_that.statuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UnitEventsStateStatus status,  List<ConnectionStatus>? statuses)?  $default,) {final _that = this;
switch (_that) {
case _UnitEventsState() when $default != null:
return $default(_that.status,_that.statuses);case _:
  return null;

}
}

}

/// @nodoc


class _UnitEventsState implements UnitEventsState {
  const _UnitEventsState({this.status = UnitEventsStateStatus.init,  List<ConnectionStatus>? statuses}): _statuses = statuses;
  

@override@JsonKey() final  UnitEventsStateStatus status;
 final  List<ConnectionStatus>? _statuses;
@override List<ConnectionStatus>? get statuses {
  final value = _statuses;
  if (value == null) return null;
  if (_statuses is EqualUnmodifiableListView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UnitEventsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitEventsStateCopyWith<_UnitEventsState> get copyWith => __$UnitEventsStateCopyWithImpl<_UnitEventsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitEventsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._statuses, _statuses));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_statuses));

@override
String toString() {
  return 'UnitEventsState(status: $status, statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class _$UnitEventsStateCopyWith<$Res> implements $UnitEventsStateCopyWith<$Res> {
  factory _$UnitEventsStateCopyWith(_UnitEventsState value, $Res Function(_UnitEventsState) _then) = __$UnitEventsStateCopyWithImpl;
@override @useResult
$Res call({
 UnitEventsStateStatus status, List<ConnectionStatus>? statuses
});




}
/// @nodoc
class __$UnitEventsStateCopyWithImpl<$Res>
    implements _$UnitEventsStateCopyWith<$Res> {
  __$UnitEventsStateCopyWithImpl(this._self, this._then);

  final _UnitEventsState _self;
  final $Res Function(_UnitEventsState) _then;

/// Create a copy of UnitEventsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statuses = freezed,}) {
  return _then(_UnitEventsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UnitEventsStateStatus,statuses: freezed == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as List<ConnectionStatus>?,
  ));
}


}

/// @nodoc
mixin _$UnitEventsSr {

 String get message;
/// Create a copy of UnitEventsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitEventsSrCopyWith<UnitEventsSr> get copyWith => _$UnitEventsSrCopyWithImpl<UnitEventsSr>(this as UnitEventsSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitEventsSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UnitEventsSr(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnitEventsSrCopyWith<$Res>  {
  factory $UnitEventsSrCopyWith(UnitEventsSr value, $Res Function(UnitEventsSr) _then) = _$UnitEventsSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnitEventsSrCopyWithImpl<$Res>
    implements $UnitEventsSrCopyWith<$Res> {
  _$UnitEventsSrCopyWithImpl(this._self, this._then);

  final UnitEventsSr _self;
  final $Res Function(UnitEventsSr) _then;

/// Create a copy of UnitEventsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(UnitEventsSr.error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitEventsSr].
extension UnitEventsSrPatterns on UnitEventsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnitEventsErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnitEventsErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnitEventsErrorSr value)  error,}){
final _that = this;
switch (_that) {
case UnitEventsErrorSr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnitEventsErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case UnitEventsErrorSr() when error != null:
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
case UnitEventsErrorSr() when error != null:
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
case UnitEventsErrorSr():
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
case UnitEventsErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class UnitEventsErrorSr implements UnitEventsSr {
  const UnitEventsErrorSr(this.message);
  

@override final  String message;

/// Create a copy of UnitEventsSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitEventsErrorSrCopyWith<UnitEventsErrorSr> get copyWith => _$UnitEventsErrorSrCopyWithImpl<UnitEventsErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitEventsErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UnitEventsSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnitEventsErrorSrCopyWith<$Res> implements $UnitEventsSrCopyWith<$Res> {
  factory $UnitEventsErrorSrCopyWith(UnitEventsErrorSr value, $Res Function(UnitEventsErrorSr) _then) = _$UnitEventsErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnitEventsErrorSrCopyWithImpl<$Res>
    implements $UnitEventsErrorSrCopyWith<$Res> {
  _$UnitEventsErrorSrCopyWithImpl(this._self, this._then);

  final UnitEventsErrorSr _self;
  final $Res Function(UnitEventsErrorSr) _then;

/// Create a copy of UnitEventsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UnitEventsErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

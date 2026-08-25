// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_fridge_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OpenFridgeState {

 OpenFridgeStateStatus get status;
/// Create a copy of OpenFridgeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenFridgeStateCopyWith<OpenFridgeState> get copyWith => _$OpenFridgeStateCopyWithImpl<OpenFridgeState>(this as OpenFridgeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenFridgeState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OpenFridgeState(status: $status)';
}


}

/// @nodoc
abstract mixin class $OpenFridgeStateCopyWith<$Res>  {
  factory $OpenFridgeStateCopyWith(OpenFridgeState value, $Res Function(OpenFridgeState) _then) = _$OpenFridgeStateCopyWithImpl;
@useResult
$Res call({
 OpenFridgeStateStatus status
});




}
/// @nodoc
class _$OpenFridgeStateCopyWithImpl<$Res>
    implements $OpenFridgeStateCopyWith<$Res> {
  _$OpenFridgeStateCopyWithImpl(this._self, this._then);

  final OpenFridgeState _self;
  final $Res Function(OpenFridgeState) _then;

/// Create a copy of OpenFridgeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(OpenFridgeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OpenFridgeStateStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenFridgeState].
extension OpenFridgeStatePatterns on OpenFridgeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenFridgeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenFridgeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenFridgeState value)  $default,){
final _that = this;
switch (_that) {
case _OpenFridgeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenFridgeState value)?  $default,){
final _that = this;
switch (_that) {
case _OpenFridgeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OpenFridgeStateStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenFridgeState() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OpenFridgeStateStatus status)  $default,) {final _that = this;
switch (_that) {
case _OpenFridgeState():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OpenFridgeStateStatus status)?  $default,) {final _that = this;
switch (_that) {
case _OpenFridgeState() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _OpenFridgeState implements OpenFridgeState {
  const _OpenFridgeState({this.status = OpenFridgeStateStatus.ready});
  

@override@JsonKey() final  OpenFridgeStateStatus status;

/// Create a copy of OpenFridgeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenFridgeStateCopyWith<_OpenFridgeState> get copyWith => __$OpenFridgeStateCopyWithImpl<_OpenFridgeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenFridgeState&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'OpenFridgeState(status: $status)';
}


}

/// @nodoc
abstract mixin class _$OpenFridgeStateCopyWith<$Res> implements $OpenFridgeStateCopyWith<$Res> {
  factory _$OpenFridgeStateCopyWith(_OpenFridgeState value, $Res Function(_OpenFridgeState) _then) = __$OpenFridgeStateCopyWithImpl;
@override @useResult
$Res call({
 OpenFridgeStateStatus status
});




}
/// @nodoc
class __$OpenFridgeStateCopyWithImpl<$Res>
    implements _$OpenFridgeStateCopyWith<$Res> {
  __$OpenFridgeStateCopyWithImpl(this._self, this._then);

  final _OpenFridgeState _self;
  final $Res Function(_OpenFridgeState) _then;

/// Create a copy of OpenFridgeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_OpenFridgeState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OpenFridgeStateStatus,
  ));
}


}

/// @nodoc
mixin _$OpenFridgeSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenFridgeSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OpenFridgeSr()';
}


}

/// @nodoc
class $OpenFridgeSrCopyWith<$Res>  {
$OpenFridgeSrCopyWith(OpenFridgeSr _, $Res Function(OpenFridgeSr) __);
}


/// Adds pattern-matching-related methods to [OpenFridgeSr].
extension OpenFridgeSrPatterns on OpenFridgeSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OpenFridgeErrorSr value)?  error,TResult Function( OpenFridgeShowSuccessMessageSr value)?  showSuccessMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OpenFridgeErrorSr() when error != null:
return error(_that);case OpenFridgeShowSuccessMessageSr() when showSuccessMessage != null:
return showSuccessMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OpenFridgeErrorSr value)  error,required TResult Function( OpenFridgeShowSuccessMessageSr value)  showSuccessMessage,}){
final _that = this;
switch (_that) {
case OpenFridgeErrorSr():
return error(_that);case OpenFridgeShowSuccessMessageSr():
return showSuccessMessage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OpenFridgeErrorSr value)?  error,TResult? Function( OpenFridgeShowSuccessMessageSr value)?  showSuccessMessage,}){
final _that = this;
switch (_that) {
case OpenFridgeErrorSr() when error != null:
return error(_that);case OpenFridgeShowSuccessMessageSr() when showSuccessMessage != null:
return showSuccessMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function()?  showSuccessMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OpenFridgeErrorSr() when error != null:
return error(_that.message);case OpenFridgeShowSuccessMessageSr() when showSuccessMessage != null:
return showSuccessMessage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function()  showSuccessMessage,}) {final _that = this;
switch (_that) {
case OpenFridgeErrorSr():
return error(_that.message);case OpenFridgeShowSuccessMessageSr():
return showSuccessMessage();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function()?  showSuccessMessage,}) {final _that = this;
switch (_that) {
case OpenFridgeErrorSr() when error != null:
return error(_that.message);case OpenFridgeShowSuccessMessageSr() when showSuccessMessage != null:
return showSuccessMessage();case _:
  return null;

}
}

}

/// @nodoc


class OpenFridgeErrorSr implements OpenFridgeSr {
  const OpenFridgeErrorSr(this.message);
  

 final  String message;

/// Create a copy of OpenFridgeSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenFridgeErrorSrCopyWith<OpenFridgeErrorSr> get copyWith => _$OpenFridgeErrorSrCopyWithImpl<OpenFridgeErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenFridgeErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'OpenFridgeSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $OpenFridgeErrorSrCopyWith<$Res> implements $OpenFridgeSrCopyWith<$Res> {
  factory $OpenFridgeErrorSrCopyWith(OpenFridgeErrorSr value, $Res Function(OpenFridgeErrorSr) _then) = _$OpenFridgeErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OpenFridgeErrorSrCopyWithImpl<$Res>
    implements $OpenFridgeErrorSrCopyWith<$Res> {
  _$OpenFridgeErrorSrCopyWithImpl(this._self, this._then);

  final OpenFridgeErrorSr _self;
  final $Res Function(OpenFridgeErrorSr) _then;

/// Create a copy of OpenFridgeSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OpenFridgeErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OpenFridgeShowSuccessMessageSr implements OpenFridgeSr {
  const OpenFridgeShowSuccessMessageSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenFridgeShowSuccessMessageSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OpenFridgeSr.showSuccessMessage()';
}


}




// dart format on

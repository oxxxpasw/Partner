// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_new_vendista_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateNewVendistaRequestEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewVendistaRequestEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewVendistaRequestEvent()';
}


}

/// @nodoc
class $CreateNewVendistaRequestEventCopyWith<$Res>  {
$CreateNewVendistaRequestEventCopyWith(CreateNewVendistaRequestEvent _, $Res Function(CreateNewVendistaRequestEvent) __);
}


/// Adds pattern-matching-related methods to [CreateNewVendistaRequestEvent].
extension CreateNewVendistaRequestEventPatterns on CreateNewVendistaRequestEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _GetTerminalsPressed value)?  getTerminalsPressed,TResult Function( _CreatePressed value)?  createPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _GetTerminalsPressed() when getTerminalsPressed != null:
return getTerminalsPressed(_that);case _CreatePressed() when createPressed != null:
return createPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _GetTerminalsPressed value)  getTerminalsPressed,required TResult Function( _CreatePressed value)  createPressed,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _GetTerminalsPressed():
return getTerminalsPressed(_that);case _CreatePressed():
return createPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _GetTerminalsPressed value)?  getTerminalsPressed,TResult? Function( _CreatePressed value)?  createPressed,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _GetTerminalsPressed() when getTerminalsPressed != null:
return getTerminalsPressed(_that);case _CreatePressed() when createPressed != null:
return createPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( String login,  String password)?  getTerminalsPressed,TResult Function( List<int> idVendista)?  createPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _GetTerminalsPressed() when getTerminalsPressed != null:
return getTerminalsPressed(_that.login,_that.password);case _CreatePressed() when createPressed != null:
return createPressed(_that.idVendista);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( String login,  String password)  getTerminalsPressed,required TResult Function( List<int> idVendista)  createPressed,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _GetTerminalsPressed():
return getTerminalsPressed(_that.login,_that.password);case _CreatePressed():
return createPressed(_that.idVendista);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( String login,  String password)?  getTerminalsPressed,TResult? Function( List<int> idVendista)?  createPressed,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _GetTerminalsPressed() when getTerminalsPressed != null:
return getTerminalsPressed(_that.login,_that.password);case _CreatePressed() when createPressed != null:
return createPressed(_that.idVendista);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements CreateNewVendistaRequestEvent {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewVendistaRequestEvent.init()';
}


}




/// @nodoc


class _GetTerminalsPressed implements CreateNewVendistaRequestEvent {
  const _GetTerminalsPressed({required this.login, required this.password});
  

 final  String login;
 final  String password;

/// Create a copy of CreateNewVendistaRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTerminalsPressedCopyWith<_GetTerminalsPressed> get copyWith => __$GetTerminalsPressedCopyWithImpl<_GetTerminalsPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTerminalsPressed&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'CreateNewVendistaRequestEvent.getTerminalsPressed(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$GetTerminalsPressedCopyWith<$Res> implements $CreateNewVendistaRequestEventCopyWith<$Res> {
  factory _$GetTerminalsPressedCopyWith(_GetTerminalsPressed value, $Res Function(_GetTerminalsPressed) _then) = __$GetTerminalsPressedCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$GetTerminalsPressedCopyWithImpl<$Res>
    implements _$GetTerminalsPressedCopyWith<$Res> {
  __$GetTerminalsPressedCopyWithImpl(this._self, this._then);

  final _GetTerminalsPressed _self;
  final $Res Function(_GetTerminalsPressed) _then;

/// Create a copy of CreateNewVendistaRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_GetTerminalsPressed(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreatePressed implements CreateNewVendistaRequestEvent {
  const _CreatePressed({required  List<int> idVendista}): _idVendista = idVendista;
  

 final  List<int> _idVendista;
 List<int> get idVendista {
  if (_idVendista is EqualUnmodifiableListView) return _idVendista;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idVendista);
}


/// Create a copy of CreateNewVendistaRequestEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePressedCopyWith<_CreatePressed> get copyWith => __$CreatePressedCopyWithImpl<_CreatePressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePressed&&const DeepCollectionEquality().equals(other._idVendista, _idVendista));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_idVendista));

@override
String toString() {
  return 'CreateNewVendistaRequestEvent.createPressed(idVendista: $idVendista)';
}


}

/// @nodoc
abstract mixin class _$CreatePressedCopyWith<$Res> implements $CreateNewVendistaRequestEventCopyWith<$Res> {
  factory _$CreatePressedCopyWith(_CreatePressed value, $Res Function(_CreatePressed) _then) = __$CreatePressedCopyWithImpl;
@useResult
$Res call({
 List<int> idVendista
});




}
/// @nodoc
class __$CreatePressedCopyWithImpl<$Res>
    implements _$CreatePressedCopyWith<$Res> {
  __$CreatePressedCopyWithImpl(this._self, this._then);

  final _CreatePressed _self;
  final $Res Function(_CreatePressed) _then;

/// Create a copy of CreateNewVendistaRequestEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? idVendista = null,}) {
  return _then(_CreatePressed(
idVendista: null == idVendista ? _self._idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

/// @nodoc
mixin _$CreateNewVendistaRequestState {

 CreateNewVendistaRequestStatus get status; List<int>? get terminals;
/// Create a copy of CreateNewVendistaRequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewVendistaRequestStateCopyWith<CreateNewVendistaRequestState> get copyWith => _$CreateNewVendistaRequestStateCopyWithImpl<CreateNewVendistaRequestState>(this as CreateNewVendistaRequestState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewVendistaRequestState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.terminals, terminals));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(terminals));

@override
String toString() {
  return 'CreateNewVendistaRequestState(status: $status, terminals: $terminals)';
}


}

/// @nodoc
abstract mixin class $CreateNewVendistaRequestStateCopyWith<$Res>  {
  factory $CreateNewVendistaRequestStateCopyWith(CreateNewVendistaRequestState value, $Res Function(CreateNewVendistaRequestState) _then) = _$CreateNewVendistaRequestStateCopyWithImpl;
@useResult
$Res call({
 CreateNewVendistaRequestStatus status, List<int>? terminals
});




}
/// @nodoc
class _$CreateNewVendistaRequestStateCopyWithImpl<$Res>
    implements $CreateNewVendistaRequestStateCopyWith<$Res> {
  _$CreateNewVendistaRequestStateCopyWithImpl(this._self, this._then);

  final CreateNewVendistaRequestState _self;
  final $Res Function(CreateNewVendistaRequestState) _then;

/// Create a copy of CreateNewVendistaRequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? terminals = freezed,}) {
  return _then(CreateNewVendistaRequestState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateNewVendistaRequestStatus,terminals: freezed == terminals ? _self.terminals : terminals // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateNewVendistaRequestState].
extension CreateNewVendistaRequestStatePatterns on CreateNewVendistaRequestState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateNewVendistaRequestState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateNewVendistaRequestState value)  $default,){
final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateNewVendistaRequestState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateNewVendistaRequestStatus status,  List<int>? terminals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState() when $default != null:
return $default(_that.status,_that.terminals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateNewVendistaRequestStatus status,  List<int>? terminals)  $default,) {final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState():
return $default(_that.status,_that.terminals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateNewVendistaRequestStatus status,  List<int>? terminals)?  $default,) {final _that = this;
switch (_that) {
case _CreateNewVendistaRequestState() when $default != null:
return $default(_that.status,_that.terminals);case _:
  return null;

}
}

}

/// @nodoc


class _CreateNewVendistaRequestState implements CreateNewVendistaRequestState {
  const _CreateNewVendistaRequestState({this.status = CreateNewVendistaRequestStatus.init,  List<int>? terminals}): _terminals = terminals;
  

@override@JsonKey() final  CreateNewVendistaRequestStatus status;
 final  List<int>? _terminals;
@override List<int>? get terminals {
  final value = _terminals;
  if (value == null) return null;
  if (_terminals is EqualUnmodifiableListView) return _terminals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateNewVendistaRequestState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateNewVendistaRequestStateCopyWith<_CreateNewVendistaRequestState> get copyWith => __$CreateNewVendistaRequestStateCopyWithImpl<_CreateNewVendistaRequestState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateNewVendistaRequestState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._terminals, _terminals));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_terminals));

@override
String toString() {
  return 'CreateNewVendistaRequestState(status: $status, terminals: $terminals)';
}


}

/// @nodoc
abstract mixin class _$CreateNewVendistaRequestStateCopyWith<$Res> implements $CreateNewVendistaRequestStateCopyWith<$Res> {
  factory _$CreateNewVendistaRequestStateCopyWith(_CreateNewVendistaRequestState value, $Res Function(_CreateNewVendistaRequestState) _then) = __$CreateNewVendistaRequestStateCopyWithImpl;
@override @useResult
$Res call({
 CreateNewVendistaRequestStatus status, List<int>? terminals
});




}
/// @nodoc
class __$CreateNewVendistaRequestStateCopyWithImpl<$Res>
    implements _$CreateNewVendistaRequestStateCopyWith<$Res> {
  __$CreateNewVendistaRequestStateCopyWithImpl(this._self, this._then);

  final _CreateNewVendistaRequestState _self;
  final $Res Function(_CreateNewVendistaRequestState) _then;

/// Create a copy of CreateNewVendistaRequestState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? terminals = freezed,}) {
  return _then(_CreateNewVendistaRequestState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateNewVendistaRequestStatus,terminals: freezed == terminals ? _self._terminals : terminals // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

/// @nodoc
mixin _$CreateNewVendistaRequestSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewVendistaRequestSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewVendistaRequestSr()';
}


}

/// @nodoc
class $CreateNewVendistaRequestSrCopyWith<$Res>  {
$CreateNewVendistaRequestSrCopyWith(CreateNewVendistaRequestSr _, $Res Function(CreateNewVendistaRequestSr) __);
}


/// Adds pattern-matching-related methods to [CreateNewVendistaRequestSr].
extension CreateNewVendistaRequestSrPatterns on CreateNewVendistaRequestSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateNewVendistaRequestErrorSr value)?  error,TResult Function( CreateNewVendistaRequestCreatedSr value)?  created,TResult Function( ShowCMIdSelectScreen value)?  showCMIdSelectScreen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr() when error != null:
return error(_that);case CreateNewVendistaRequestCreatedSr() when created != null:
return created(_that);case ShowCMIdSelectScreen() when showCMIdSelectScreen != null:
return showCMIdSelectScreen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateNewVendistaRequestErrorSr value)  error,required TResult Function( CreateNewVendistaRequestCreatedSr value)  created,required TResult Function( ShowCMIdSelectScreen value)  showCMIdSelectScreen,}){
final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr():
return error(_that);case CreateNewVendistaRequestCreatedSr():
return created(_that);case ShowCMIdSelectScreen():
return showCMIdSelectScreen(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateNewVendistaRequestErrorSr value)?  error,TResult? Function( CreateNewVendistaRequestCreatedSr value)?  created,TResult? Function( ShowCMIdSelectScreen value)?  showCMIdSelectScreen,}){
final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr() when error != null:
return error(_that);case CreateNewVendistaRequestCreatedSr() when created != null:
return created(_that);case ShowCMIdSelectScreen() when showCMIdSelectScreen != null:
return showCMIdSelectScreen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function()?  created,TResult Function()?  showCMIdSelectScreen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr() when error != null:
return error(_that.message);case CreateNewVendistaRequestCreatedSr() when created != null:
return created();case ShowCMIdSelectScreen() when showCMIdSelectScreen != null:
return showCMIdSelectScreen();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function()  created,required TResult Function()  showCMIdSelectScreen,}) {final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr():
return error(_that.message);case CreateNewVendistaRequestCreatedSr():
return created();case ShowCMIdSelectScreen():
return showCMIdSelectScreen();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function()?  created,TResult? Function()?  showCMIdSelectScreen,}) {final _that = this;
switch (_that) {
case CreateNewVendistaRequestErrorSr() when error != null:
return error(_that.message);case CreateNewVendistaRequestCreatedSr() when created != null:
return created();case ShowCMIdSelectScreen() when showCMIdSelectScreen != null:
return showCMIdSelectScreen();case _:
  return null;

}
}

}

/// @nodoc


class CreateNewVendistaRequestErrorSr implements CreateNewVendistaRequestSr {
  const CreateNewVendistaRequestErrorSr(this.message);
  

 final  String message;

/// Create a copy of CreateNewVendistaRequestSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateNewVendistaRequestErrorSrCopyWith<CreateNewVendistaRequestErrorSr> get copyWith => _$CreateNewVendistaRequestErrorSrCopyWithImpl<CreateNewVendistaRequestErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewVendistaRequestErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateNewVendistaRequestSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateNewVendistaRequestErrorSrCopyWith<$Res> implements $CreateNewVendistaRequestSrCopyWith<$Res> {
  factory $CreateNewVendistaRequestErrorSrCopyWith(CreateNewVendistaRequestErrorSr value, $Res Function(CreateNewVendistaRequestErrorSr) _then) = _$CreateNewVendistaRequestErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateNewVendistaRequestErrorSrCopyWithImpl<$Res>
    implements $CreateNewVendistaRequestErrorSrCopyWith<$Res> {
  _$CreateNewVendistaRequestErrorSrCopyWithImpl(this._self, this._then);

  final CreateNewVendistaRequestErrorSr _self;
  final $Res Function(CreateNewVendistaRequestErrorSr) _then;

/// Create a copy of CreateNewVendistaRequestSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreateNewVendistaRequestErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateNewVendistaRequestCreatedSr implements CreateNewVendistaRequestSr {
  const CreateNewVendistaRequestCreatedSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateNewVendistaRequestCreatedSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewVendistaRequestSr.created()';
}


}




/// @nodoc


class ShowCMIdSelectScreen implements CreateNewVendistaRequestSr {
  const ShowCMIdSelectScreen();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowCMIdSelectScreen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateNewVendistaRequestSr.showCMIdSelectScreen()';
}


}




// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendista_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateVendistaRequestBody implements DiagnosticableTreeMixin {

 String get login; String get password; String get token; List<int> get idVendista;
/// Create a copy of CreateVendistaRequestBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateVendistaRequestBodyCopyWith<CreateVendistaRequestBody> get copyWith => _$CreateVendistaRequestBodyCopyWithImpl<CreateVendistaRequestBody>(this as CreateVendistaRequestBody, _$identity);

  /// Serializes this CreateVendistaRequestBody to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateVendistaRequestBody'))
    ..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('idVendista', idVendista));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateVendistaRequestBody&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.idVendista, idVendista));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,token,const DeepCollectionEquality().hash(idVendista));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateVendistaRequestBody(login: $login, password: $password, token: $token, idVendista: $idVendista)';
}


}

/// @nodoc
abstract mixin class $CreateVendistaRequestBodyCopyWith<$Res>  {
  factory $CreateVendistaRequestBodyCopyWith(CreateVendistaRequestBody value, $Res Function(CreateVendistaRequestBody) _then) = _$CreateVendistaRequestBodyCopyWithImpl;
@useResult
$Res call({
 String login, String password, String token, List<int> idVendista
});




}
/// @nodoc
class _$CreateVendistaRequestBodyCopyWithImpl<$Res>
    implements $CreateVendistaRequestBodyCopyWith<$Res> {
  _$CreateVendistaRequestBodyCopyWithImpl(this._self, this._then);

  final CreateVendistaRequestBody _self;
  final $Res Function(CreateVendistaRequestBody) _then;

/// Create a copy of CreateVendistaRequestBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? password = null,Object? token = null,Object? idVendista = null,}) {
  return _then(CreateVendistaRequestBody(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idVendista: null == idVendista ? _self.idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateVendistaRequestBody].
extension CreateVendistaRequestBodyPatterns on CreateVendistaRequestBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateVendistaRequestBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateVendistaRequestBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateVendistaRequestBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateVendistaRequestBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateVendistaRequestBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateVendistaRequestBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String password,  String token,  List<int> idVendista)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateVendistaRequestBody() when $default != null:
return $default(_that.login,_that.password,_that.token,_that.idVendista);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String password,  String token,  List<int> idVendista)  $default,) {final _that = this;
switch (_that) {
case _CreateVendistaRequestBody():
return $default(_that.login,_that.password,_that.token,_that.idVendista);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String password,  String token,  List<int> idVendista)?  $default,) {final _that = this;
switch (_that) {
case _CreateVendistaRequestBody() when $default != null:
return $default(_that.login,_that.password,_that.token,_that.idVendista);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _CreateVendistaRequestBody with DiagnosticableTreeMixin implements CreateVendistaRequestBody {
  const _CreateVendistaRequestBody({required this.login, required this.password, required this.token, required  List<int> idVendista}): _idVendista = idVendista;
  factory _CreateVendistaRequestBody.fromJson(Map<String, dynamic> json) => _$CreateVendistaRequestBodyFromJson(json);

@override final  String login;
@override final  String password;
@override final  String token;
 final  List<int> _idVendista;
@override List<int> get idVendista {
  if (_idVendista is EqualUnmodifiableListView) return _idVendista;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_idVendista);
}


/// Create a copy of CreateVendistaRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateVendistaRequestBodyCopyWith<_CreateVendistaRequestBody> get copyWith => __$CreateVendistaRequestBodyCopyWithImpl<_CreateVendistaRequestBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateVendistaRequestBodyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CreateVendistaRequestBody'))
    ..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('token', token))..add(DiagnosticsProperty('idVendista', idVendista));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateVendistaRequestBody&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other._idVendista, _idVendista));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,token,const DeepCollectionEquality().hash(_idVendista));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CreateVendistaRequestBody(login: $login, password: $password, token: $token, idVendista: $idVendista)';
}


}

/// @nodoc
abstract mixin class _$CreateVendistaRequestBodyCopyWith<$Res> implements $CreateVendistaRequestBodyCopyWith<$Res> {
  factory _$CreateVendistaRequestBodyCopyWith(_CreateVendistaRequestBody value, $Res Function(_CreateVendistaRequestBody) _then) = __$CreateVendistaRequestBodyCopyWithImpl;
@override @useResult
$Res call({
 String login, String password, String token, List<int> idVendista
});




}
/// @nodoc
class __$CreateVendistaRequestBodyCopyWithImpl<$Res>
    implements _$CreateVendistaRequestBodyCopyWith<$Res> {
  __$CreateVendistaRequestBodyCopyWithImpl(this._self, this._then);

  final _CreateVendistaRequestBody _self;
  final $Res Function(_CreateVendistaRequestBody) _then;

/// Create a copy of CreateVendistaRequestBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,Object? token = null,Object? idVendista = null,}) {
  return _then(_CreateVendistaRequestBody(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,idVendista: null == idVendista ? _self._idVendista : idVendista // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$VendistaTerminalsBody implements DiagnosticableTreeMixin {

 String get login; String get password; String get token;
/// Create a copy of VendistaTerminalsBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaTerminalsBodyCopyWith<VendistaTerminalsBody> get copyWith => _$VendistaTerminalsBodyCopyWithImpl<VendistaTerminalsBody>(this as VendistaTerminalsBody, _$identity);

  /// Serializes this VendistaTerminalsBody to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VendistaTerminalsBody'))
    ..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaTerminalsBody&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VendistaTerminalsBody(login: $login, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class $VendistaTerminalsBodyCopyWith<$Res>  {
  factory $VendistaTerminalsBodyCopyWith(VendistaTerminalsBody value, $Res Function(VendistaTerminalsBody) _then) = _$VendistaTerminalsBodyCopyWithImpl;
@useResult
$Res call({
 String login, String password, String token
});




}
/// @nodoc
class _$VendistaTerminalsBodyCopyWithImpl<$Res>
    implements $VendistaTerminalsBodyCopyWith<$Res> {
  _$VendistaTerminalsBodyCopyWithImpl(this._self, this._then);

  final VendistaTerminalsBody _self;
  final $Res Function(VendistaTerminalsBody) _then;

/// Create a copy of VendistaTerminalsBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? password = null,Object? token = null,}) {
  return _then(VendistaTerminalsBody(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendistaTerminalsBody].
extension VendistaTerminalsBodyPatterns on VendistaTerminalsBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendistaTerminalsBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendistaTerminalsBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendistaTerminalsBody value)  $default,){
final _that = this;
switch (_that) {
case _VendistaTerminalsBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendistaTerminalsBody value)?  $default,){
final _that = this;
switch (_that) {
case _VendistaTerminalsBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String password,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendistaTerminalsBody() when $default != null:
return $default(_that.login,_that.password,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String password,  String token)  $default,) {final _that = this;
switch (_that) {
case _VendistaTerminalsBody():
return $default(_that.login,_that.password,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String password,  String token)?  $default,) {final _that = this;
switch (_that) {
case _VendistaTerminalsBody() when $default != null:
return $default(_that.login,_that.password,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendistaTerminalsBody with DiagnosticableTreeMixin implements VendistaTerminalsBody {
  const _VendistaTerminalsBody({required this.login, required this.password, required this.token});
  factory _VendistaTerminalsBody.fromJson(Map<String, dynamic> json) => _$VendistaTerminalsBodyFromJson(json);

@override final  String login;
@override final  String password;
@override final  String token;

/// Create a copy of VendistaTerminalsBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendistaTerminalsBodyCopyWith<_VendistaTerminalsBody> get copyWith => __$VendistaTerminalsBodyCopyWithImpl<_VendistaTerminalsBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendistaTerminalsBodyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'VendistaTerminalsBody'))
    ..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('password', password))..add(DiagnosticsProperty('token', token));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendistaTerminalsBody&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,token);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'VendistaTerminalsBody(login: $login, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class _$VendistaTerminalsBodyCopyWith<$Res> implements $VendistaTerminalsBodyCopyWith<$Res> {
  factory _$VendistaTerminalsBodyCopyWith(_VendistaTerminalsBody value, $Res Function(_VendistaTerminalsBody) _then) = __$VendistaTerminalsBodyCopyWithImpl;
@override @useResult
$Res call({
 String login, String password, String token
});




}
/// @nodoc
class __$VendistaTerminalsBodyCopyWithImpl<$Res>
    implements _$VendistaTerminalsBodyCopyWith<$Res> {
  __$VendistaTerminalsBodyCopyWithImpl(this._self, this._then);

  final _VendistaTerminalsBody _self;
  final $Res Function(_VendistaTerminalsBody) _then;

/// Create a copy of VendistaTerminalsBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,Object? token = null,}) {
  return _then(_VendistaTerminalsBody(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileState {

 UserProfileStatus get status; bool get isAuthorized; BonusCardModel? get bonusCard; City? get selectedCity;
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileStateCopyWith<UserProfileState> get copyWith => _$UserProfileStateCopyWithImpl<UserProfileState>(this as UserProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&(identical(other.bonusCard, bonusCard) || other.bonusCard == bonusCard)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity));
}


@override
int get hashCode => Object.hash(runtimeType,status,isAuthorized,bonusCard,selectedCity);

@override
String toString() {
  return 'UserProfileState(status: $status, isAuthorized: $isAuthorized, bonusCard: $bonusCard, selectedCity: $selectedCity)';
}


}

/// @nodoc
abstract mixin class $UserProfileStateCopyWith<$Res>  {
  factory $UserProfileStateCopyWith(UserProfileState value, $Res Function(UserProfileState) _then) = _$UserProfileStateCopyWithImpl;
@useResult
$Res call({
 UserProfileStatus status, bool isAuthorized, BonusCardModel? bonusCard, City? selectedCity
});


$BonusCardModelCopyWith<$Res>? get bonusCard;$CityCopyWith<$Res>? get selectedCity;

}
/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._self, this._then);

  final UserProfileState _self;
  final $Res Function(UserProfileState) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? isAuthorized = null,Object? bonusCard = freezed,Object? selectedCity = freezed,}) {
  return _then(UserProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProfileStatus,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,bonusCard: freezed == bonusCard ? _self.bonusCard : bonusCard // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}
/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusCardModelCopyWith<$Res>? get bonusCard {
    if (_self.bonusCard == null) {
    return null;
  }

  return $BonusCardModelCopyWith<$Res>(_self.bonusCard!, (value) {
    return _then(_self.copyWith(bonusCard: value));
  });
}/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selectedCity!, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfileState].
extension UserProfileStatePatterns on UserProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileState value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserProfileStatus status,  bool isAuthorized,  BonusCardModel? bonusCard,  City? selectedCity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
return $default(_that.status,_that.isAuthorized,_that.bonusCard,_that.selectedCity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserProfileStatus status,  bool isAuthorized,  BonusCardModel? bonusCard,  City? selectedCity)  $default,) {final _that = this;
switch (_that) {
case _UserProfileState():
return $default(_that.status,_that.isAuthorized,_that.bonusCard,_that.selectedCity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserProfileStatus status,  bool isAuthorized,  BonusCardModel? bonusCard,  City? selectedCity)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileState() when $default != null:
return $default(_that.status,_that.isAuthorized,_that.bonusCard,_that.selectedCity);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfileState implements UserProfileState {
  const _UserProfileState({this.status = UserProfileStatus.init, this.isAuthorized = false, this.bonusCard, this.selectedCity});
  

@override@JsonKey() final  UserProfileStatus status;
@override@JsonKey() final  bool isAuthorized;
@override final  BonusCardModel? bonusCard;
@override final  City? selectedCity;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileStateCopyWith<_UserProfileState> get copyWith => __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileState&&(identical(other.status, status) || other.status == status)&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&(identical(other.bonusCard, bonusCard) || other.bonusCard == bonusCard)&&(identical(other.selectedCity, selectedCity) || other.selectedCity == selectedCity));
}


@override
int get hashCode => Object.hash(runtimeType,status,isAuthorized,bonusCard,selectedCity);

@override
String toString() {
  return 'UserProfileState(status: $status, isAuthorized: $isAuthorized, bonusCard: $bonusCard, selectedCity: $selectedCity)';
}


}

/// @nodoc
abstract mixin class _$UserProfileStateCopyWith<$Res> implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(_UserProfileState value, $Res Function(_UserProfileState) _then) = __$UserProfileStateCopyWithImpl;
@override @useResult
$Res call({
 UserProfileStatus status, bool isAuthorized, BonusCardModel? bonusCard, City? selectedCity
});


@override $BonusCardModelCopyWith<$Res>? get bonusCard;@override $CityCopyWith<$Res>? get selectedCity;

}
/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(this._self, this._then);

  final _UserProfileState _self;
  final $Res Function(_UserProfileState) _then;

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? isAuthorized = null,Object? bonusCard = freezed,Object? selectedCity = freezed,}) {
  return _then(_UserProfileState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserProfileStatus,isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,bonusCard: freezed == bonusCard ? _self.bonusCard : bonusCard // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,selectedCity: freezed == selectedCity ? _self.selectedCity : selectedCity // ignore: cast_nullable_to_non_nullable
as City?,
  ));
}

/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusCardModelCopyWith<$Res>? get bonusCard {
    if (_self.bonusCard == null) {
    return null;
  }

  return $BonusCardModelCopyWith<$Res>(_self.bonusCard!, (value) {
    return _then(_self.copyWith(bonusCard: value));
  });
}/// Create a copy of UserProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CityCopyWith<$Res>? get selectedCity {
    if (_self.selectedCity == null) {
    return null;
  }

  return $CityCopyWith<$Res>(_self.selectedCity!, (value) {
    return _then(_self.copyWith(selectedCity: value));
  });
}
}

/// @nodoc
mixin _$UserProfileSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileSr()';
}


}

/// @nodoc
class $UserProfileSrCopyWith<$Res>  {
$UserProfileSrCopyWith(UserProfileSr _, $Res Function(UserProfileSr) __);
}


/// Adds pattern-matching-related methods to [UserProfileSr].
extension UserProfileSrPatterns on UserProfileSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserProfileErrorSr value)?  error,TResult Function( UserProfileOpenKnowledgeBaseSr value)?  openKnowledgeBase,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserProfileErrorSr() when error != null:
return error(_that);case UserProfileOpenKnowledgeBaseSr() when openKnowledgeBase != null:
return openKnowledgeBase(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserProfileErrorSr value)  error,required TResult Function( UserProfileOpenKnowledgeBaseSr value)  openKnowledgeBase,}){
final _that = this;
switch (_that) {
case UserProfileErrorSr():
return error(_that);case UserProfileOpenKnowledgeBaseSr():
return openKnowledgeBase(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserProfileErrorSr value)?  error,TResult? Function( UserProfileOpenKnowledgeBaseSr value)?  openKnowledgeBase,}){
final _that = this;
switch (_that) {
case UserProfileErrorSr() when error != null:
return error(_that);case UserProfileOpenKnowledgeBaseSr() when openKnowledgeBase != null:
return openKnowledgeBase(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function( Uri uri)?  openKnowledgeBase,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserProfileErrorSr() when error != null:
return error(_that.message);case UserProfileOpenKnowledgeBaseSr() when openKnowledgeBase != null:
return openKnowledgeBase(_that.uri);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function( Uri uri)  openKnowledgeBase,}) {final _that = this;
switch (_that) {
case UserProfileErrorSr():
return error(_that.message);case UserProfileOpenKnowledgeBaseSr():
return openKnowledgeBase(_that.uri);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function( Uri uri)?  openKnowledgeBase,}) {final _that = this;
switch (_that) {
case UserProfileErrorSr() when error != null:
return error(_that.message);case UserProfileOpenKnowledgeBaseSr() when openKnowledgeBase != null:
return openKnowledgeBase(_that.uri);case _:
  return null;

}
}

}

/// @nodoc


class UserProfileErrorSr implements UserProfileSr {
  const UserProfileErrorSr(this.message);
  

 final  String message;

/// Create a copy of UserProfileSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileErrorSrCopyWith<UserProfileErrorSr> get copyWith => _$UserProfileErrorSrCopyWithImpl<UserProfileErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserProfileSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserProfileErrorSrCopyWith<$Res> implements $UserProfileSrCopyWith<$Res> {
  factory $UserProfileErrorSrCopyWith(UserProfileErrorSr value, $Res Function(UserProfileErrorSr) _then) = _$UserProfileErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserProfileErrorSrCopyWithImpl<$Res>
    implements $UserProfileErrorSrCopyWith<$Res> {
  _$UserProfileErrorSrCopyWithImpl(this._self, this._then);

  final UserProfileErrorSr _self;
  final $Res Function(UserProfileErrorSr) _then;

/// Create a copy of UserProfileSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UserProfileErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UserProfileOpenKnowledgeBaseSr implements UserProfileSr {
  const UserProfileOpenKnowledgeBaseSr(this.uri);
  

 final  Uri uri;

/// Create a copy of UserProfileSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileOpenKnowledgeBaseSrCopyWith<UserProfileOpenKnowledgeBaseSr> get copyWith => _$UserProfileOpenKnowledgeBaseSrCopyWithImpl<UserProfileOpenKnowledgeBaseSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileOpenKnowledgeBaseSr&&(identical(other.uri, uri) || other.uri == uri));
}


@override
int get hashCode => Object.hash(runtimeType,uri);

@override
String toString() {
  return 'UserProfileSr.openKnowledgeBase(uri: $uri)';
}


}

/// @nodoc
abstract mixin class $UserProfileOpenKnowledgeBaseSrCopyWith<$Res> implements $UserProfileSrCopyWith<$Res> {
  factory $UserProfileOpenKnowledgeBaseSrCopyWith(UserProfileOpenKnowledgeBaseSr value, $Res Function(UserProfileOpenKnowledgeBaseSr) _then) = _$UserProfileOpenKnowledgeBaseSrCopyWithImpl;
@useResult
$Res call({
 Uri uri
});




}
/// @nodoc
class _$UserProfileOpenKnowledgeBaseSrCopyWithImpl<$Res>
    implements $UserProfileOpenKnowledgeBaseSrCopyWith<$Res> {
  _$UserProfileOpenKnowledgeBaseSrCopyWithImpl(this._self, this._then);

  final UserProfileOpenKnowledgeBaseSr _self;
  final $Res Function(UserProfileOpenKnowledgeBaseSr) _then;

/// Create a copy of UserProfileSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uri = null,}) {
  return _then(UserProfileOpenKnowledgeBaseSr(
null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as Uri,
  ));
}


}

// dart format on

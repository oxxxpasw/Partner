// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_program_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusProgramInfoState {

 BonusProgramInfoStatus get status; BonusCardModel? get bonusCard;
/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramInfoStateCopyWith<BonusProgramInfoState> get copyWith => _$BonusProgramInfoStateCopyWithImpl<BonusProgramInfoState>(this as BonusProgramInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoState&&(identical(other.status, status) || other.status == status)&&(identical(other.bonusCard, bonusCard) || other.bonusCard == bonusCard));
}


@override
int get hashCode => Object.hash(runtimeType,status,bonusCard);

@override
String toString() {
  return 'BonusProgramInfoState(status: $status, bonusCard: $bonusCard)';
}


}

/// @nodoc
abstract mixin class $BonusProgramInfoStateCopyWith<$Res>  {
  factory $BonusProgramInfoStateCopyWith(BonusProgramInfoState value, $Res Function(BonusProgramInfoState) _then) = _$BonusProgramInfoStateCopyWithImpl;
@useResult
$Res call({
 BonusProgramInfoStatus status, BonusCardModel? bonusCard
});


$BonusCardModelCopyWith<$Res>? get bonusCard;

}
/// @nodoc
class _$BonusProgramInfoStateCopyWithImpl<$Res>
    implements $BonusProgramInfoStateCopyWith<$Res> {
  _$BonusProgramInfoStateCopyWithImpl(this._self, this._then);

  final BonusProgramInfoState _self;
  final $Res Function(BonusProgramInfoState) _then;

/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? bonusCard = freezed,}) {
  return _then(BonusProgramInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusProgramInfoStatus,bonusCard: freezed == bonusCard ? _self.bonusCard : bonusCard // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,
  ));
}
/// Create a copy of BonusProgramInfoState
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
}
}


/// Adds pattern-matching-related methods to [BonusProgramInfoState].
extension BonusProgramInfoStatePatterns on BonusProgramInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusProgramInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusProgramInfoState value)  $default,){
final _that = this;
switch (_that) {
case _BonusProgramInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusProgramInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BonusProgramInfoStatus status,  BonusCardModel? bonusCard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
return $default(_that.status,_that.bonusCard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BonusProgramInfoStatus status,  BonusCardModel? bonusCard)  $default,) {final _that = this;
switch (_that) {
case _BonusProgramInfoState():
return $default(_that.status,_that.bonusCard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BonusProgramInfoStatus status,  BonusCardModel? bonusCard)?  $default,) {final _that = this;
switch (_that) {
case _BonusProgramInfoState() when $default != null:
return $default(_that.status,_that.bonusCard);case _:
  return null;

}
}

}

/// @nodoc


class _BonusProgramInfoState implements BonusProgramInfoState {
  const _BonusProgramInfoState({this.status = BonusProgramInfoStatus.init, this.bonusCard}): assert(status != BonusProgramInfoStatus.ready || bonusCard != null);
  

@override@JsonKey() final  BonusProgramInfoStatus status;
@override final  BonusCardModel? bonusCard;

/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramInfoStateCopyWith<_BonusProgramInfoState> get copyWith => __$BonusProgramInfoStateCopyWithImpl<_BonusProgramInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramInfoState&&(identical(other.status, status) || other.status == status)&&(identical(other.bonusCard, bonusCard) || other.bonusCard == bonusCard));
}


@override
int get hashCode => Object.hash(runtimeType,status,bonusCard);

@override
String toString() {
  return 'BonusProgramInfoState(status: $status, bonusCard: $bonusCard)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramInfoStateCopyWith<$Res> implements $BonusProgramInfoStateCopyWith<$Res> {
  factory _$BonusProgramInfoStateCopyWith(_BonusProgramInfoState value, $Res Function(_BonusProgramInfoState) _then) = __$BonusProgramInfoStateCopyWithImpl;
@override @useResult
$Res call({
 BonusProgramInfoStatus status, BonusCardModel? bonusCard
});


@override $BonusCardModelCopyWith<$Res>? get bonusCard;

}
/// @nodoc
class __$BonusProgramInfoStateCopyWithImpl<$Res>
    implements _$BonusProgramInfoStateCopyWith<$Res> {
  __$BonusProgramInfoStateCopyWithImpl(this._self, this._then);

  final _BonusProgramInfoState _self;
  final $Res Function(_BonusProgramInfoState) _then;

/// Create a copy of BonusProgramInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? bonusCard = freezed,}) {
  return _then(_BonusProgramInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BonusProgramInfoStatus,bonusCard: freezed == bonusCard ? _self.bonusCard : bonusCard // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,
  ));
}

/// Create a copy of BonusProgramInfoState
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
}
}

/// @nodoc
mixin _$BonusProgramInfoSr {

 String get error;
/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusProgramInfoSrCopyWith<BonusProgramInfoSr> get copyWith => _$BonusProgramInfoSrCopyWithImpl<BonusProgramInfoSr>(this as BonusProgramInfoSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusProgramInfoSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'BonusProgramInfoSr(error: $error)';
}


}

/// @nodoc
abstract mixin class $BonusProgramInfoSrCopyWith<$Res>  {
  factory $BonusProgramInfoSrCopyWith(BonusProgramInfoSr value, $Res Function(BonusProgramInfoSr) _then) = _$BonusProgramInfoSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$BonusProgramInfoSrCopyWithImpl<$Res>
    implements $BonusProgramInfoSrCopyWith<$Res> {
  _$BonusProgramInfoSrCopyWithImpl(this._self, this._then);

  final BonusProgramInfoSr _self;
  final $Res Function(BonusProgramInfoSr) _then;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = null,}) {
  return _then(BonusProgramInfoSr.error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusProgramInfoSr].
extension BonusProgramInfoSrPatterns on BonusProgramInfoSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _BonusProgramInfoErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _BonusProgramInfoErrorSr value)  error,}){
final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _BonusProgramInfoErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _BonusProgramInfoErrorSr() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _BonusProgramInfoErrorSr implements BonusProgramInfoSr {
  const _BonusProgramInfoErrorSr(this.error);
  

@override final  String error;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusProgramInfoErrorSrCopyWith<_BonusProgramInfoErrorSr> get copyWith => __$BonusProgramInfoErrorSrCopyWithImpl<_BonusProgramInfoErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusProgramInfoErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'BonusProgramInfoSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$BonusProgramInfoErrorSrCopyWith<$Res> implements $BonusProgramInfoSrCopyWith<$Res> {
  factory _$BonusProgramInfoErrorSrCopyWith(_BonusProgramInfoErrorSr value, $Res Function(_BonusProgramInfoErrorSr) _then) = __$BonusProgramInfoErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String error
});




}
/// @nodoc
class __$BonusProgramInfoErrorSrCopyWithImpl<$Res>
    implements _$BonusProgramInfoErrorSrCopyWith<$Res> {
  __$BonusProgramInfoErrorSrCopyWithImpl(this._self, this._then);

  final _BonusProgramInfoErrorSr _self;
  final $Res Function(_BonusProgramInfoErrorSr) _then;

/// Create a copy of BonusProgramInfoSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_BonusProgramInfoErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

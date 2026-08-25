// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bonus_balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BonusBalanceState {

 double? get bonusBalance;
/// Create a copy of BonusBalanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BonusBalanceStateCopyWith<BonusBalanceState> get copyWith => _$BonusBalanceStateCopyWithImpl<BonusBalanceState>(this as BonusBalanceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BonusBalanceState&&(identical(other.bonusBalance, bonusBalance) || other.bonusBalance == bonusBalance));
}


@override
int get hashCode => Object.hash(runtimeType,bonusBalance);

@override
String toString() {
  return 'BonusBalanceState(bonusBalance: $bonusBalance)';
}


}

/// @nodoc
abstract mixin class $BonusBalanceStateCopyWith<$Res>  {
  factory $BonusBalanceStateCopyWith(BonusBalanceState value, $Res Function(BonusBalanceState) _then) = _$BonusBalanceStateCopyWithImpl;
@useResult
$Res call({
 double? bonusBalance
});




}
/// @nodoc
class _$BonusBalanceStateCopyWithImpl<$Res>
    implements $BonusBalanceStateCopyWith<$Res> {
  _$BonusBalanceStateCopyWithImpl(this._self, this._then);

  final BonusBalanceState _self;
  final $Res Function(BonusBalanceState) _then;

/// Create a copy of BonusBalanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bonusBalance = freezed,}) {
  return _then(BonusBalanceState(
bonusBalance: freezed == bonusBalance ? _self.bonusBalance : bonusBalance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [BonusBalanceState].
extension BonusBalanceStatePatterns on BonusBalanceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BonusBalanceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BonusBalanceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BonusBalanceState value)  $default,){
final _that = this;
switch (_that) {
case _BonusBalanceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BonusBalanceState value)?  $default,){
final _that = this;
switch (_that) {
case _BonusBalanceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? bonusBalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BonusBalanceState() when $default != null:
return $default(_that.bonusBalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? bonusBalance)  $default,) {final _that = this;
switch (_that) {
case _BonusBalanceState():
return $default(_that.bonusBalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? bonusBalance)?  $default,) {final _that = this;
switch (_that) {
case _BonusBalanceState() when $default != null:
return $default(_that.bonusBalance);case _:
  return null;

}
}

}

/// @nodoc


class _BonusBalanceState implements BonusBalanceState {
  const _BonusBalanceState({this.bonusBalance});
  

@override final  double? bonusBalance;

/// Create a copy of BonusBalanceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BonusBalanceStateCopyWith<_BonusBalanceState> get copyWith => __$BonusBalanceStateCopyWithImpl<_BonusBalanceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BonusBalanceState&&(identical(other.bonusBalance, bonusBalance) || other.bonusBalance == bonusBalance));
}


@override
int get hashCode => Object.hash(runtimeType,bonusBalance);

@override
String toString() {
  return 'BonusBalanceState(bonusBalance: $bonusBalance)';
}


}

/// @nodoc
abstract mixin class _$BonusBalanceStateCopyWith<$Res> implements $BonusBalanceStateCopyWith<$Res> {
  factory _$BonusBalanceStateCopyWith(_BonusBalanceState value, $Res Function(_BonusBalanceState) _then) = __$BonusBalanceStateCopyWithImpl;
@override @useResult
$Res call({
 double? bonusBalance
});




}
/// @nodoc
class __$BonusBalanceStateCopyWithImpl<$Res>
    implements _$BonusBalanceStateCopyWith<$Res> {
  __$BonusBalanceStateCopyWithImpl(this._self, this._then);

  final _BonusBalanceState _self;
  final $Res Function(_BonusBalanceState) _then;

/// Create a copy of BonusBalanceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bonusBalance = freezed,}) {
  return _then(_BonusBalanceState(
bonusBalance: freezed == bonusBalance ? _self.bonusBalance : bonusBalance // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

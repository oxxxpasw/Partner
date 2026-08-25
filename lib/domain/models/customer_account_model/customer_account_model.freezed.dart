// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CustomerAccountModel implements DiagnosticableTreeMixin {

 BonusCardModel? get card; List<PromotionShortInfo> get promotions;
/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerAccountModelCopyWith<CustomerAccountModel> get copyWith => _$CustomerAccountModelCopyWithImpl<CustomerAccountModel>(this as CustomerAccountModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountModel'))
    ..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerAccountModel&&(identical(other.card, card) || other.card == card)&&const DeepCollectionEquality().equals(other.promotions, promotions));
}


@override
int get hashCode => Object.hash(runtimeType,card,const DeepCollectionEquality().hash(promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountModel(card: $card, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class $CustomerAccountModelCopyWith<$Res>  {
  factory $CustomerAccountModelCopyWith(CustomerAccountModel value, $Res Function(CustomerAccountModel) _then) = _$CustomerAccountModelCopyWithImpl;
@useResult
$Res call({
 BonusCardModel? card, List<PromotionShortInfo> promotions
});


$BonusCardModelCopyWith<$Res>? get card;

}
/// @nodoc
class _$CustomerAccountModelCopyWithImpl<$Res>
    implements $CustomerAccountModelCopyWith<$Res> {
  _$CustomerAccountModelCopyWithImpl(this._self, this._then);

  final CustomerAccountModel _self;
  final $Res Function(CustomerAccountModel) _then;

/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? card = freezed,Object? promotions = null,}) {
  return _then(CustomerAccountModel(
card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}
/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusCardModelCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $BonusCardModelCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerAccountModel].
extension CustomerAccountModelPatterns on CustomerAccountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BonusCardModel? card,  List<PromotionShortInfo> promotions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
return $default(_that.card,_that.promotions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BonusCardModel? card,  List<PromotionShortInfo> promotions)  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountModel():
return $default(_that.card,_that.promotions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BonusCardModel? card,  List<PromotionShortInfo> promotions)?  $default,) {final _that = this;
switch (_that) {
case _CustomerAccountModel() when $default != null:
return $default(_that.card,_that.promotions);case _:
  return null;

}
}

}

/// @nodoc


class _CustomerAccountModel with DiagnosticableTreeMixin implements CustomerAccountModel {
  const _CustomerAccountModel({this.card,  List<PromotionShortInfo> promotions = const []}): _promotions = promotions;
  

@override final  BonusCardModel? card;
 final  List<PromotionShortInfo> _promotions;
@override@JsonKey() List<PromotionShortInfo> get promotions {
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotions);
}


/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerAccountModelCopyWith<_CustomerAccountModel> get copyWith => __$CustomerAccountModelCopyWithImpl<_CustomerAccountModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CustomerAccountModel'))
    ..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('promotions', promotions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerAccountModel&&(identical(other.card, card) || other.card == card)&&const DeepCollectionEquality().equals(other._promotions, _promotions));
}


@override
int get hashCode => Object.hash(runtimeType,card,const DeepCollectionEquality().hash(_promotions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CustomerAccountModel(card: $card, promotions: $promotions)';
}


}

/// @nodoc
abstract mixin class _$CustomerAccountModelCopyWith<$Res> implements $CustomerAccountModelCopyWith<$Res> {
  factory _$CustomerAccountModelCopyWith(_CustomerAccountModel value, $Res Function(_CustomerAccountModel) _then) = __$CustomerAccountModelCopyWithImpl;
@override @useResult
$Res call({
 BonusCardModel? card, List<PromotionShortInfo> promotions
});


@override $BonusCardModelCopyWith<$Res>? get card;

}
/// @nodoc
class __$CustomerAccountModelCopyWithImpl<$Res>
    implements _$CustomerAccountModelCopyWith<$Res> {
  __$CustomerAccountModelCopyWithImpl(this._self, this._then);

  final _CustomerAccountModel _self;
  final $Res Function(_CustomerAccountModel) _then;

/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? card = freezed,Object? promotions = null,}) {
  return _then(_CustomerAccountModel(
card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as BonusCardModel?,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<PromotionShortInfo>,
  ));
}

/// Create a copy of CustomerAccountModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BonusCardModelCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $BonusCardModelCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}
}

// dart format on

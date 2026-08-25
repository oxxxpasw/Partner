// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackState {

 FeedbackType get type; FeedbackStateStatus get status; AcceptedOrder? get order; Store? get store;
/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackStateCopyWith<FeedbackState> get copyWith => _$FeedbackStateCopyWithImpl<FeedbackState>(this as FeedbackState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackState&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,type,status,order,store);

@override
String toString() {
  return 'FeedbackState(type: $type, status: $status, order: $order, store: $store)';
}


}

/// @nodoc
abstract mixin class $FeedbackStateCopyWith<$Res>  {
  factory $FeedbackStateCopyWith(FeedbackState value, $Res Function(FeedbackState) _then) = _$FeedbackStateCopyWithImpl;
@useResult
$Res call({
 FeedbackType type, FeedbackStateStatus status, AcceptedOrder? order, Store? store
});


$AcceptedOrderCopyWith<$Res>? get order;$StoreCopyWith<$Res>? get store;

}
/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._self, this._then);

  final FeedbackState _self;
  final $Res Function(FeedbackState) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? order = freezed,Object? store = freezed,}) {
  return _then(FeedbackState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedbackType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackStateStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}
/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedbackState].
extension FeedbackStatePatterns on FeedbackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackState value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedbackType type,  FeedbackStateStatus status,  AcceptedOrder? order,  Store? store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
return $default(_that.type,_that.status,_that.order,_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedbackType type,  FeedbackStateStatus status,  AcceptedOrder? order,  Store? store)  $default,) {final _that = this;
switch (_that) {
case _FeedbackState():
return $default(_that.type,_that.status,_that.order,_that.store);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedbackType type,  FeedbackStateStatus status,  AcceptedOrder? order,  Store? store)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
return $default(_that.type,_that.status,_that.order,_that.store);case _:
  return null;

}
}

}

/// @nodoc


class _FeedbackState implements FeedbackState {
  const _FeedbackState({required this.type, this.status = FeedbackStateStatus.init, this.order, this.store});
  

@override final  FeedbackType type;
@override@JsonKey() final  FeedbackStateStatus status;
@override final  AcceptedOrder? order;
@override final  Store? store;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackStateCopyWith<_FeedbackState> get copyWith => __$FeedbackStateCopyWithImpl<_FeedbackState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackState&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.order, order) || other.order == order)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,type,status,order,store);

@override
String toString() {
  return 'FeedbackState(type: $type, status: $status, order: $order, store: $store)';
}


}

/// @nodoc
abstract mixin class _$FeedbackStateCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedbackStateCopyWith(_FeedbackState value, $Res Function(_FeedbackState) _then) = __$FeedbackStateCopyWithImpl;
@override @useResult
$Res call({
 FeedbackType type, FeedbackStateStatus status, AcceptedOrder? order, Store? store
});


@override $AcceptedOrderCopyWith<$Res>? get order;@override $StoreCopyWith<$Res>? get store;

}
/// @nodoc
class __$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedbackStateCopyWith<$Res> {
  __$FeedbackStateCopyWithImpl(this._self, this._then);

  final _FeedbackState _self;
  final $Res Function(_FeedbackState) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? order = freezed,Object? store = freezed,}) {
  return _then(_FeedbackState(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FeedbackType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FeedbackStateStatus,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as AcceptedOrder?,store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as Store?,
  ));
}

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AcceptedOrderCopyWith<$Res>? get order {
    if (_self.order == null) {
    return null;
  }

  return $AcceptedOrderCopyWith<$Res>(_self.order!, (value) {
    return _then(_self.copyWith(order: value));
  });
}/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $StoreCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

/// @nodoc
mixin _$FeedbackSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackSr()';
}


}

/// @nodoc
class $FeedbackSrCopyWith<$Res>  {
$FeedbackSrCopyWith(FeedbackSr _, $Res Function(FeedbackSr) __);
}


/// Adds pattern-matching-related methods to [FeedbackSr].
extension FeedbackSrPatterns on FeedbackSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FeedbackShowStoreListSr value)?  showStoreList,TResult Function( FeedbackShowOrderListSr value)?  showOrderList,TResult Function( FeedbackSuccessSr value)?  success,TResult Function( FeedbackErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FeedbackShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case FeedbackShowOrderListSr() when showOrderList != null:
return showOrderList(_that);case FeedbackSuccessSr() when success != null:
return success(_that);case FeedbackErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FeedbackShowStoreListSr value)  showStoreList,required TResult Function( FeedbackShowOrderListSr value)  showOrderList,required TResult Function( FeedbackSuccessSr value)  success,required TResult Function( FeedbackErrorSr value)  error,}){
final _that = this;
switch (_that) {
case FeedbackShowStoreListSr():
return showStoreList(_that);case FeedbackShowOrderListSr():
return showOrderList(_that);case FeedbackSuccessSr():
return success(_that);case FeedbackErrorSr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FeedbackShowStoreListSr value)?  showStoreList,TResult? Function( FeedbackShowOrderListSr value)?  showOrderList,TResult? Function( FeedbackSuccessSr value)?  success,TResult? Function( FeedbackErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case FeedbackShowStoreListSr() when showStoreList != null:
return showStoreList(_that);case FeedbackShowOrderListSr() when showOrderList != null:
return showOrderList(_that);case FeedbackSuccessSr() when success != null:
return success(_that);case FeedbackErrorSr() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  showStoreList,TResult Function()?  showOrderList,TResult Function()?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FeedbackShowStoreListSr() when showStoreList != null:
return showStoreList();case FeedbackShowOrderListSr() when showOrderList != null:
return showOrderList();case FeedbackSuccessSr() when success != null:
return success();case FeedbackErrorSr() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  showStoreList,required TResult Function()  showOrderList,required TResult Function()  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case FeedbackShowStoreListSr():
return showStoreList();case FeedbackShowOrderListSr():
return showOrderList();case FeedbackSuccessSr():
return success();case FeedbackErrorSr():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  showStoreList,TResult? Function()?  showOrderList,TResult? Function()?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case FeedbackShowStoreListSr() when showStoreList != null:
return showStoreList();case FeedbackShowOrderListSr() when showOrderList != null:
return showOrderList();case FeedbackSuccessSr() when success != null:
return success();case FeedbackErrorSr() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class FeedbackShowStoreListSr implements FeedbackSr {
  const FeedbackShowStoreListSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackShowStoreListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackSr.showStoreList()';
}


}




/// @nodoc


class FeedbackShowOrderListSr implements FeedbackSr {
  const FeedbackShowOrderListSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackShowOrderListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackSr.showOrderList()';
}


}




/// @nodoc


class FeedbackSuccessSr implements FeedbackSr {
  const FeedbackSuccessSr();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackSuccessSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FeedbackSr.success()';
}


}




/// @nodoc


class FeedbackErrorSr implements FeedbackSr {
  const FeedbackErrorSr(this.error);
  

 final  String error;

/// Create a copy of FeedbackSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackErrorSrCopyWith<FeedbackErrorSr> get copyWith => _$FeedbackErrorSrCopyWithImpl<FeedbackErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackErrorSr&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'FeedbackSr.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $FeedbackErrorSrCopyWith<$Res> implements $FeedbackSrCopyWith<$Res> {
  factory $FeedbackErrorSrCopyWith(FeedbackErrorSr value, $Res Function(FeedbackErrorSr) _then) = _$FeedbackErrorSrCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$FeedbackErrorSrCopyWithImpl<$Res>
    implements $FeedbackErrorSrCopyWith<$Res> {
  _$FeedbackErrorSrCopyWithImpl(this._self, this._then);

  final FeedbackErrorSr _self;
  final $Res Function(FeedbackErrorSr) _then;

/// Create a copy of FeedbackSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FeedbackErrorSr(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

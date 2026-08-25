// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReviewDetailsState {

 ReviewDetailsStateStatus get status; ReviewDetails? get review;
/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDetailsStateCopyWith<ReviewDetailsState> get copyWith => _$ReviewDetailsStateCopyWithImpl<ReviewDetailsState>(this as ReviewDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.review, review) || other.review == review));
}


@override
int get hashCode => Object.hash(runtimeType,status,review);

@override
String toString() {
  return 'ReviewDetailsState(status: $status, review: $review)';
}


}

/// @nodoc
abstract mixin class $ReviewDetailsStateCopyWith<$Res>  {
  factory $ReviewDetailsStateCopyWith(ReviewDetailsState value, $Res Function(ReviewDetailsState) _then) = _$ReviewDetailsStateCopyWithImpl;
@useResult
$Res call({
 ReviewDetailsStateStatus status, ReviewDetails? review
});


$ReviewDetailsCopyWith<$Res>? get review;

}
/// @nodoc
class _$ReviewDetailsStateCopyWithImpl<$Res>
    implements $ReviewDetailsStateCopyWith<$Res> {
  _$ReviewDetailsStateCopyWithImpl(this._self, this._then);

  final ReviewDetailsState _self;
  final $Res Function(ReviewDetailsState) _then;

/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? review = freezed,}) {
  return _then(ReviewDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewDetailsStateStatus,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewDetails?,
  ));
}
/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDetailsCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $ReviewDetailsCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewDetailsState].
extension ReviewDetailsStatePatterns on ReviewDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReviewDetailsStateStatus status,  ReviewDetails? review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDetailsState() when $default != null:
return $default(_that.status,_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReviewDetailsStateStatus status,  ReviewDetails? review)  $default,) {final _that = this;
switch (_that) {
case _ReviewDetailsState():
return $default(_that.status,_that.review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReviewDetailsStateStatus status,  ReviewDetails? review)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDetailsState() when $default != null:
return $default(_that.status,_that.review);case _:
  return null;

}
}

}

/// @nodoc


class _ReviewDetailsState implements ReviewDetailsState {
  const _ReviewDetailsState({this.status = ReviewDetailsStateStatus.init, this.review});
  

@override@JsonKey() final  ReviewDetailsStateStatus status;
@override final  ReviewDetails? review;

/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDetailsStateCopyWith<_ReviewDetailsState> get copyWith => __$ReviewDetailsStateCopyWithImpl<_ReviewDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.review, review) || other.review == review));
}


@override
int get hashCode => Object.hash(runtimeType,status,review);

@override
String toString() {
  return 'ReviewDetailsState(status: $status, review: $review)';
}


}

/// @nodoc
abstract mixin class _$ReviewDetailsStateCopyWith<$Res> implements $ReviewDetailsStateCopyWith<$Res> {
  factory _$ReviewDetailsStateCopyWith(_ReviewDetailsState value, $Res Function(_ReviewDetailsState) _then) = __$ReviewDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 ReviewDetailsStateStatus status, ReviewDetails? review
});


@override $ReviewDetailsCopyWith<$Res>? get review;

}
/// @nodoc
class __$ReviewDetailsStateCopyWithImpl<$Res>
    implements _$ReviewDetailsStateCopyWith<$Res> {
  __$ReviewDetailsStateCopyWithImpl(this._self, this._then);

  final _ReviewDetailsState _self;
  final $Res Function(_ReviewDetailsState) _then;

/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? review = freezed,}) {
  return _then(_ReviewDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReviewDetailsStateStatus,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as ReviewDetails?,
  ));
}

/// Create a copy of ReviewDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewDetailsCopyWith<$Res>? get review {
    if (_self.review == null) {
    return null;
  }

  return $ReviewDetailsCopyWith<$Res>(_self.review!, (value) {
    return _then(_self.copyWith(review: value));
  });
}
}

/// @nodoc
mixin _$ReviewDetailsSr {

 String get message;
/// Create a copy of ReviewDetailsSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDetailsSrCopyWith<ReviewDetailsSr> get copyWith => _$ReviewDetailsSrCopyWithImpl<ReviewDetailsSr>(this as ReviewDetailsSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDetailsSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReviewDetailsSr(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReviewDetailsSrCopyWith<$Res>  {
  factory $ReviewDetailsSrCopyWith(ReviewDetailsSr value, $Res Function(ReviewDetailsSr) _then) = _$ReviewDetailsSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReviewDetailsSrCopyWithImpl<$Res>
    implements $ReviewDetailsSrCopyWith<$Res> {
  _$ReviewDetailsSrCopyWithImpl(this._self, this._then);

  final ReviewDetailsSr _self;
  final $Res Function(ReviewDetailsSr) _then;

/// Create a copy of ReviewDetailsSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(ReviewDetailsSr.error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewDetailsSr].
extension ReviewDetailsSrPatterns on ReviewDetailsSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReviewDetailsErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReviewDetailsErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReviewDetailsErrorSr value)  error,}){
final _that = this;
switch (_that) {
case ReviewDetailsErrorSr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReviewDetailsErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case ReviewDetailsErrorSr() when error != null:
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
case ReviewDetailsErrorSr() when error != null:
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
case ReviewDetailsErrorSr():
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
case ReviewDetailsErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ReviewDetailsErrorSr implements ReviewDetailsSr {
  const ReviewDetailsErrorSr(this.message);
  

@override final  String message;

/// Create a copy of ReviewDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDetailsErrorSrCopyWith<ReviewDetailsErrorSr> get copyWith => _$ReviewDetailsErrorSrCopyWithImpl<ReviewDetailsErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDetailsErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReviewDetailsSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReviewDetailsErrorSrCopyWith<$Res> implements $ReviewDetailsSrCopyWith<$Res> {
  factory $ReviewDetailsErrorSrCopyWith(ReviewDetailsErrorSr value, $Res Function(ReviewDetailsErrorSr) _then) = _$ReviewDetailsErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReviewDetailsErrorSrCopyWithImpl<$Res>
    implements $ReviewDetailsErrorSrCopyWith<$Res> {
  _$ReviewDetailsErrorSrCopyWithImpl(this._self, this._then);

  final ReviewDetailsErrorSr _self;
  final $Res Function(ReviewDetailsErrorSr) _then;

/// Create a copy of ReviewDetailsSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ReviewDetailsErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

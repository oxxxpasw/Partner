// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendista_request_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VendistaRequestListState {

 VendistaRequestListStatus get status; List<VendistaRequest>? get requests;
/// Create a copy of VendistaRequestListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestListStateCopyWith<VendistaRequestListState> get copyWith => _$VendistaRequestListStateCopyWithImpl<VendistaRequestListState>(this as VendistaRequestListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.requests, requests));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(requests));

@override
String toString() {
  return 'VendistaRequestListState(status: $status, requests: $requests)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestListStateCopyWith<$Res>  {
  factory $VendistaRequestListStateCopyWith(VendistaRequestListState value, $Res Function(VendistaRequestListState) _then) = _$VendistaRequestListStateCopyWithImpl;
@useResult
$Res call({
 VendistaRequestListStatus status, List<VendistaRequest>? requests
});




}
/// @nodoc
class _$VendistaRequestListStateCopyWithImpl<$Res>
    implements $VendistaRequestListStateCopyWith<$Res> {
  _$VendistaRequestListStateCopyWithImpl(this._self, this._then);

  final VendistaRequestListState _self;
  final $Res Function(VendistaRequestListState) _then;

/// Create a copy of VendistaRequestListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? requests = freezed,}) {
  return _then(VendistaRequestListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestListStatus,requests: freezed == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<VendistaRequest>?,
  ));
}

}


/// Adds pattern-matching-related methods to [VendistaRequestListState].
extension VendistaRequestListStatePatterns on VendistaRequestListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendistaRequestListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendistaRequestListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendistaRequestListState value)  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendistaRequestListState value)?  $default,){
final _that = this;
switch (_that) {
case _VendistaRequestListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( VendistaRequestListStatus status,  List<VendistaRequest>? requests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendistaRequestListState() when $default != null:
return $default(_that.status,_that.requests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( VendistaRequestListStatus status,  List<VendistaRequest>? requests)  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestListState():
return $default(_that.status,_that.requests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( VendistaRequestListStatus status,  List<VendistaRequest>? requests)?  $default,) {final _that = this;
switch (_that) {
case _VendistaRequestListState() when $default != null:
return $default(_that.status,_that.requests);case _:
  return null;

}
}

}

/// @nodoc


class _VendistaRequestListState implements VendistaRequestListState {
  const _VendistaRequestListState({this.status = VendistaRequestListStatus.init,  List<VendistaRequest>? requests}): _requests = requests;
  

@override@JsonKey() final  VendistaRequestListStatus status;
 final  List<VendistaRequest>? _requests;
@override List<VendistaRequest>? get requests {
  final value = _requests;
  if (value == null) return null;
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of VendistaRequestListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendistaRequestListStateCopyWith<_VendistaRequestListState> get copyWith => __$VendistaRequestListStateCopyWithImpl<_VendistaRequestListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendistaRequestListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._requests, _requests));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_requests));

@override
String toString() {
  return 'VendistaRequestListState(status: $status, requests: $requests)';
}


}

/// @nodoc
abstract mixin class _$VendistaRequestListStateCopyWith<$Res> implements $VendistaRequestListStateCopyWith<$Res> {
  factory _$VendistaRequestListStateCopyWith(_VendistaRequestListState value, $Res Function(_VendistaRequestListState) _then) = __$VendistaRequestListStateCopyWithImpl;
@override @useResult
$Res call({
 VendistaRequestListStatus status, List<VendistaRequest>? requests
});




}
/// @nodoc
class __$VendistaRequestListStateCopyWithImpl<$Res>
    implements _$VendistaRequestListStateCopyWith<$Res> {
  __$VendistaRequestListStateCopyWithImpl(this._self, this._then);

  final _VendistaRequestListState _self;
  final $Res Function(_VendistaRequestListState) _then;

/// Create a copy of VendistaRequestListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? requests = freezed,}) {
  return _then(_VendistaRequestListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as VendistaRequestListStatus,requests: freezed == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<VendistaRequest>?,
  ));
}


}

/// @nodoc
mixin _$VendistaRequestListSr {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestListSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VendistaRequestListSr()';
}


}

/// @nodoc
class $VendistaRequestListSrCopyWith<$Res>  {
$VendistaRequestListSrCopyWith(VendistaRequestListSr _, $Res Function(VendistaRequestListSr) __);
}


/// Adds pattern-matching-related methods to [VendistaRequestListSr].
extension VendistaRequestListSrPatterns on VendistaRequestListSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VendistaRequestListErrorSr value)?  error,TResult Function( VendistaRequestListOpenDetailsSr value)?  openDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VendistaRequestListErrorSr() when error != null:
return error(_that);case VendistaRequestListOpenDetailsSr() when openDetails != null:
return openDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VendistaRequestListErrorSr value)  error,required TResult Function( VendistaRequestListOpenDetailsSr value)  openDetails,}){
final _that = this;
switch (_that) {
case VendistaRequestListErrorSr():
return error(_that);case VendistaRequestListOpenDetailsSr():
return openDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VendistaRequestListErrorSr value)?  error,TResult? Function( VendistaRequestListOpenDetailsSr value)?  openDetails,}){
final _that = this;
switch (_that) {
case VendistaRequestListErrorSr() when error != null:
return error(_that);case VendistaRequestListOpenDetailsSr() when openDetails != null:
return openDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function( VendistaRequest request)?  openDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VendistaRequestListErrorSr() when error != null:
return error(_that.message);case VendistaRequestListOpenDetailsSr() when openDetails != null:
return openDetails(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function( VendistaRequest request)  openDetails,}) {final _that = this;
switch (_that) {
case VendistaRequestListErrorSr():
return error(_that.message);case VendistaRequestListOpenDetailsSr():
return openDetails(_that.request);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function( VendistaRequest request)?  openDetails,}) {final _that = this;
switch (_that) {
case VendistaRequestListErrorSr() when error != null:
return error(_that.message);case VendistaRequestListOpenDetailsSr() when openDetails != null:
return openDetails(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class VendistaRequestListErrorSr implements VendistaRequestListSr {
  const VendistaRequestListErrorSr(this.message);
  

 final  String message;

/// Create a copy of VendistaRequestListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestListErrorSrCopyWith<VendistaRequestListErrorSr> get copyWith => _$VendistaRequestListErrorSrCopyWithImpl<VendistaRequestListErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestListErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VendistaRequestListSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestListErrorSrCopyWith<$Res> implements $VendistaRequestListSrCopyWith<$Res> {
  factory $VendistaRequestListErrorSrCopyWith(VendistaRequestListErrorSr value, $Res Function(VendistaRequestListErrorSr) _then) = _$VendistaRequestListErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$VendistaRequestListErrorSrCopyWithImpl<$Res>
    implements $VendistaRequestListErrorSrCopyWith<$Res> {
  _$VendistaRequestListErrorSrCopyWithImpl(this._self, this._then);

  final VendistaRequestListErrorSr _self;
  final $Res Function(VendistaRequestListErrorSr) _then;

/// Create a copy of VendistaRequestListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VendistaRequestListErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VendistaRequestListOpenDetailsSr implements VendistaRequestListSr {
  const VendistaRequestListOpenDetailsSr(this.request);
  

 final  VendistaRequest request;

/// Create a copy of VendistaRequestListSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendistaRequestListOpenDetailsSrCopyWith<VendistaRequestListOpenDetailsSr> get copyWith => _$VendistaRequestListOpenDetailsSrCopyWithImpl<VendistaRequestListOpenDetailsSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendistaRequestListOpenDetailsSr&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'VendistaRequestListSr.openDetails(request: $request)';
}


}

/// @nodoc
abstract mixin class $VendistaRequestListOpenDetailsSrCopyWith<$Res> implements $VendistaRequestListSrCopyWith<$Res> {
  factory $VendistaRequestListOpenDetailsSrCopyWith(VendistaRequestListOpenDetailsSr value, $Res Function(VendistaRequestListOpenDetailsSr) _then) = _$VendistaRequestListOpenDetailsSrCopyWithImpl;
@useResult
$Res call({
 VendistaRequest request
});


$VendistaRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$VendistaRequestListOpenDetailsSrCopyWithImpl<$Res>
    implements $VendistaRequestListOpenDetailsSrCopyWith<$Res> {
  _$VendistaRequestListOpenDetailsSrCopyWithImpl(this._self, this._then);

  final VendistaRequestListOpenDetailsSr _self;
  final $Res Function(VendistaRequestListOpenDetailsSr) _then;

/// Create a copy of VendistaRequestListSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(VendistaRequestListOpenDetailsSr(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as VendistaRequest,
  ));
}

/// Create a copy of VendistaRequestListSr
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VendistaRequestCopyWith<$Res> get request {
  
  return $VendistaRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on

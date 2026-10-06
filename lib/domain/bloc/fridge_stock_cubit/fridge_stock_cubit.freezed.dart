// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fridge_stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FridgeStockState implements DiagnosticableTreeMixin {

 FridgeStockStatus get status; FridgeStockDeviceDto? get device; List<FridgeStockItemDto> get items; bool get busy;
/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockStateCopyWith<FridgeStockState> get copyWith => _$FridgeStockStateCopyWithImpl<FridgeStockState>(this as FridgeStockState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('device', device))..add(DiagnosticsProperty('items', items))..add(DiagnosticsProperty('busy', busy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockState&&(identical(other.status, status) || other.status == status)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.busy, busy) || other.busy == busy));
}


@override
int get hashCode => Object.hash(runtimeType,status,device,const DeepCollectionEquality().hash(items),busy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockState(status: $status, device: $device, items: $items, busy: $busy)';
}


}

/// @nodoc
abstract mixin class $FridgeStockStateCopyWith<$Res>  {
  factory $FridgeStockStateCopyWith(FridgeStockState value, $Res Function(FridgeStockState) _then) = _$FridgeStockStateCopyWithImpl;
@useResult
$Res call({
 FridgeStockStatus status, FridgeStockDeviceDto? device, List<FridgeStockItemDto> items, bool busy
});


$FridgeStockDeviceDtoCopyWith<$Res>? get device;

}
/// @nodoc
class _$FridgeStockStateCopyWithImpl<$Res>
    implements $FridgeStockStateCopyWith<$Res> {
  _$FridgeStockStateCopyWithImpl(this._self, this._then);

  final FridgeStockState _self;
  final $Res Function(FridgeStockState) _then;

/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? device = freezed,Object? items = null,Object? busy = null,}) {
  return _then(FridgeStockState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FridgeStockStatus,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FridgeStockDeviceDto?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<FridgeStockItemDto>,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FridgeStockDeviceDtoCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $FridgeStockDeviceDtoCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [FridgeStockState].
extension FridgeStockStatePatterns on FridgeStockState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FridgeStockState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FridgeStockState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FridgeStockState value)  $default,){
final _that = this;
switch (_that) {
case _FridgeStockState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FridgeStockState value)?  $default,){
final _that = this;
switch (_that) {
case _FridgeStockState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FridgeStockStatus status,  FridgeStockDeviceDto? device,  List<FridgeStockItemDto> items,  bool busy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FridgeStockState() when $default != null:
return $default(_that.status,_that.device,_that.items,_that.busy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FridgeStockStatus status,  FridgeStockDeviceDto? device,  List<FridgeStockItemDto> items,  bool busy)  $default,) {final _that = this;
switch (_that) {
case _FridgeStockState():
return $default(_that.status,_that.device,_that.items,_that.busy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FridgeStockStatus status,  FridgeStockDeviceDto? device,  List<FridgeStockItemDto> items,  bool busy)?  $default,) {final _that = this;
switch (_that) {
case _FridgeStockState() when $default != null:
return $default(_that.status,_that.device,_that.items,_that.busy);case _:
  return null;

}
}

}

/// @nodoc


class _FridgeStockState extends FridgeStockState with DiagnosticableTreeMixin {
  const _FridgeStockState({this.status = FridgeStockStatus.init, this.device,  List<FridgeStockItemDto> items = const [], this.busy = false}): _items = items,super._();
  

@override@JsonKey() final  FridgeStockStatus status;
@override final  FridgeStockDeviceDto? device;
 final  List<FridgeStockItemDto> _items;
@override@JsonKey() List<FridgeStockItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool busy;

/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FridgeStockStateCopyWith<_FridgeStockState> get copyWith => __$FridgeStockStateCopyWithImpl<_FridgeStockState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('device', device))..add(DiagnosticsProperty('items', items))..add(DiagnosticsProperty('busy', busy));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FridgeStockState&&(identical(other.status, status) || other.status == status)&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.busy, busy) || other.busy == busy));
}


@override
int get hashCode => Object.hash(runtimeType,status,device,const DeepCollectionEquality().hash(_items),busy);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockState(status: $status, device: $device, items: $items, busy: $busy)';
}


}

/// @nodoc
abstract mixin class _$FridgeStockStateCopyWith<$Res> implements $FridgeStockStateCopyWith<$Res> {
  factory _$FridgeStockStateCopyWith(_FridgeStockState value, $Res Function(_FridgeStockState) _then) = __$FridgeStockStateCopyWithImpl;
@override @useResult
$Res call({
 FridgeStockStatus status, FridgeStockDeviceDto? device, List<FridgeStockItemDto> items, bool busy
});


@override $FridgeStockDeviceDtoCopyWith<$Res>? get device;

}
/// @nodoc
class __$FridgeStockStateCopyWithImpl<$Res>
    implements _$FridgeStockStateCopyWith<$Res> {
  __$FridgeStockStateCopyWithImpl(this._self, this._then);

  final _FridgeStockState _self;
  final $Res Function(_FridgeStockState) _then;

/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? device = freezed,Object? items = null,Object? busy = null,}) {
  return _then(_FridgeStockState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FridgeStockStatus,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as FridgeStockDeviceDto?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<FridgeStockItemDto>,busy: null == busy ? _self.busy : busy // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FridgeStockState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FridgeStockDeviceDtoCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $FridgeStockDeviceDtoCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc
mixin _$FridgeStockSr implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockSr'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockSr);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockSr()';
}


}

/// @nodoc
class $FridgeStockSrCopyWith<$Res>  {
$FridgeStockSrCopyWith(FridgeStockSr _, $Res Function(FridgeStockSr) __);
}


/// Adds pattern-matching-related methods to [FridgeStockSr].
extension FridgeStockSrPatterns on FridgeStockSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FridgeStockErrorSr value)?  error,TResult Function( FridgeStockInfoSr value)?  info,TResult Function( FridgeStockNeedNameSr value)?  needName,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FridgeStockErrorSr() when error != null:
return error(_that);case FridgeStockInfoSr() when info != null:
return info(_that);case FridgeStockNeedNameSr() when needName != null:
return needName(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FridgeStockErrorSr value)  error,required TResult Function( FridgeStockInfoSr value)  info,required TResult Function( FridgeStockNeedNameSr value)  needName,}){
final _that = this;
switch (_that) {
case FridgeStockErrorSr():
return error(_that);case FridgeStockInfoSr():
return info(_that);case FridgeStockNeedNameSr():
return needName(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FridgeStockErrorSr value)?  error,TResult? Function( FridgeStockInfoSr value)?  info,TResult? Function( FridgeStockNeedNameSr value)?  needName,}){
final _that = this;
switch (_that) {
case FridgeStockErrorSr() when error != null:
return error(_that);case FridgeStockInfoSr() when info != null:
return info(_that);case FridgeStockNeedNameSr() when needName != null:
return needName(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  error,TResult Function( String message)?  info,TResult Function( String barcode)?  needName,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FridgeStockErrorSr() when error != null:
return error(_that.message);case FridgeStockInfoSr() when info != null:
return info(_that.message);case FridgeStockNeedNameSr() when needName != null:
return needName(_that.barcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  error,required TResult Function( String message)  info,required TResult Function( String barcode)  needName,}) {final _that = this;
switch (_that) {
case FridgeStockErrorSr():
return error(_that.message);case FridgeStockInfoSr():
return info(_that.message);case FridgeStockNeedNameSr():
return needName(_that.barcode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  error,TResult? Function( String message)?  info,TResult? Function( String barcode)?  needName,}) {final _that = this;
switch (_that) {
case FridgeStockErrorSr() when error != null:
return error(_that.message);case FridgeStockInfoSr() when info != null:
return info(_that.message);case FridgeStockNeedNameSr() when needName != null:
return needName(_that.barcode);case _:
  return null;

}
}

}

/// @nodoc


class FridgeStockErrorSr with DiagnosticableTreeMixin implements FridgeStockSr {
  const FridgeStockErrorSr(this.message);
  

 final  String message;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockErrorSrCopyWith<FridgeStockErrorSr> get copyWith => _$FridgeStockErrorSrCopyWithImpl<FridgeStockErrorSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockSr.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $FridgeStockErrorSrCopyWith<$Res> implements $FridgeStockSrCopyWith<$Res> {
  factory $FridgeStockErrorSrCopyWith(FridgeStockErrorSr value, $Res Function(FridgeStockErrorSr) _then) = _$FridgeStockErrorSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FridgeStockErrorSrCopyWithImpl<$Res>
    implements $FridgeStockErrorSrCopyWith<$Res> {
  _$FridgeStockErrorSrCopyWithImpl(this._self, this._then);

  final FridgeStockErrorSr _self;
  final $Res Function(FridgeStockErrorSr) _then;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FridgeStockErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FridgeStockInfoSr with DiagnosticableTreeMixin implements FridgeStockSr {
  const FridgeStockInfoSr(this.message);
  

 final  String message;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockInfoSrCopyWith<FridgeStockInfoSr> get copyWith => _$FridgeStockInfoSrCopyWithImpl<FridgeStockInfoSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockSr.info'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockInfoSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockSr.info(message: $message)';
}


}

/// @nodoc
abstract mixin class $FridgeStockInfoSrCopyWith<$Res> implements $FridgeStockSrCopyWith<$Res> {
  factory $FridgeStockInfoSrCopyWith(FridgeStockInfoSr value, $Res Function(FridgeStockInfoSr) _then) = _$FridgeStockInfoSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FridgeStockInfoSrCopyWithImpl<$Res>
    implements $FridgeStockInfoSrCopyWith<$Res> {
  _$FridgeStockInfoSrCopyWithImpl(this._self, this._then);

  final FridgeStockInfoSr _self;
  final $Res Function(FridgeStockInfoSr) _then;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FridgeStockInfoSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FridgeStockNeedNameSr with DiagnosticableTreeMixin implements FridgeStockSr {
  const FridgeStockNeedNameSr(this.barcode);
  

 final  String barcode;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FridgeStockNeedNameSrCopyWith<FridgeStockNeedNameSr> get copyWith => _$FridgeStockNeedNameSrCopyWithImpl<FridgeStockNeedNameSr>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FridgeStockSr.needName'))
    ..add(DiagnosticsProperty('barcode', barcode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FridgeStockNeedNameSr&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FridgeStockSr.needName(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class $FridgeStockNeedNameSrCopyWith<$Res> implements $FridgeStockSrCopyWith<$Res> {
  factory $FridgeStockNeedNameSrCopyWith(FridgeStockNeedNameSr value, $Res Function(FridgeStockNeedNameSr) _then) = _$FridgeStockNeedNameSrCopyWithImpl;
@useResult
$Res call({
 String barcode
});




}
/// @nodoc
class _$FridgeStockNeedNameSrCopyWithImpl<$Res>
    implements $FridgeStockNeedNameSrCopyWith<$Res> {
  _$FridgeStockNeedNameSrCopyWithImpl(this._self, this._then);

  final FridgeStockNeedNameSr _self;
  final $Res Function(FridgeStockNeedNameSr) _then;

/// Create a copy of FridgeStockSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(FridgeStockNeedNameSr(
null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

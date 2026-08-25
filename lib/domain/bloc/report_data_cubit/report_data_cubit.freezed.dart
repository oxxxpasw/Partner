// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportDataState {

 ReportDataStatus get status; ReportData? get data; DateTime? get startDate; DateTime? get endDate;
/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataStateCopyWith<ReportDataState> get copyWith => _$ReportDataStateCopyWithImpl<ReportDataState>(this as ReportDataState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,startDate,endDate);

@override
String toString() {
  return 'ReportDataState(status: $status, data: $data, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ReportDataStateCopyWith<$Res>  {
  factory $ReportDataStateCopyWith(ReportDataState value, $Res Function(ReportDataState) _then) = _$ReportDataStateCopyWithImpl;
@useResult
$Res call({
 ReportDataStatus status, ReportData? data, DateTime? startDate, DateTime? endDate
});


$ReportDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ReportDataStateCopyWithImpl<$Res>
    implements $ReportDataStateCopyWith<$Res> {
  _$ReportDataStateCopyWithImpl(this._self, this._then);

  final ReportDataState _self;
  final $Res Function(ReportDataState) _then;

/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(ReportDataState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportDataStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReportData?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReportDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReportDataState].
extension ReportDataStatePatterns on ReportDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportDataState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportDataState value)  $default,){
final _that = this;
switch (_that) {
case _ReportDataState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportDataState value)?  $default,){
final _that = this;
switch (_that) {
case _ReportDataState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportDataStatus status,  ReportData? data,  DateTime? startDate,  DateTime? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportDataState() when $default != null:
return $default(_that.status,_that.data,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportDataStatus status,  ReportData? data,  DateTime? startDate,  DateTime? endDate)  $default,) {final _that = this;
switch (_that) {
case _ReportDataState():
return $default(_that.status,_that.data,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportDataStatus status,  ReportData? data,  DateTime? startDate,  DateTime? endDate)?  $default,) {final _that = this;
switch (_that) {
case _ReportDataState() when $default != null:
return $default(_that.status,_that.data,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class _ReportDataState implements ReportDataState {
  const _ReportDataState({this.status = ReportDataStatus.init, this.data, this.startDate, this.endDate});
  

@override@JsonKey() final  ReportDataStatus status;
@override final  ReportData? data;
@override final  DateTime? startDate;
@override final  DateTime? endDate;

/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportDataStateCopyWith<_ReportDataState> get copyWith => __$ReportDataStateCopyWithImpl<_ReportDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportDataState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,startDate,endDate);

@override
String toString() {
  return 'ReportDataState(status: $status, data: $data, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$ReportDataStateCopyWith<$Res> implements $ReportDataStateCopyWith<$Res> {
  factory _$ReportDataStateCopyWith(_ReportDataState value, $Res Function(_ReportDataState) _then) = __$ReportDataStateCopyWithImpl;
@override @useResult
$Res call({
 ReportDataStatus status, ReportData? data, DateTime? startDate, DateTime? endDate
});


@override $ReportDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ReportDataStateCopyWithImpl<$Res>
    implements _$ReportDataStateCopyWith<$Res> {
  __$ReportDataStateCopyWithImpl(this._self, this._then);

  final _ReportDataState _self;
  final $Res Function(_ReportDataState) _then;

/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_ReportDataState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportDataStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ReportData?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ReportDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReportDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ReportDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$ReportDataSr {

 String get message;
/// Create a copy of ReportDataSr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataSrCopyWith<ReportDataSr> get copyWith => _$ReportDataSrCopyWithImpl<ReportDataSr>(this as ReportDataSr, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReportDataSr(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReportDataSrCopyWith<$Res>  {
  factory $ReportDataSrCopyWith(ReportDataSr value, $Res Function(ReportDataSr) _then) = _$ReportDataSrCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReportDataSrCopyWithImpl<$Res>
    implements $ReportDataSrCopyWith<$Res> {
  _$ReportDataSrCopyWithImpl(this._self, this._then);

  final ReportDataSr _self;
  final $Res Function(ReportDataSr) _then;

/// Create a copy of ReportDataSr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(ReportDataSr.error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportDataSr].
extension ReportDataSrPatterns on ReportDataSr {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ReportDataErrorSr value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ReportDataErrorSr() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ReportDataErrorSr value)  error,}){
final _that = this;
switch (_that) {
case ReportDataErrorSr():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ReportDataErrorSr value)?  error,}){
final _that = this;
switch (_that) {
case ReportDataErrorSr() when error != null:
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
case ReportDataErrorSr() when error != null:
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
case ReportDataErrorSr():
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
case ReportDataErrorSr() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ReportDataErrorSr implements ReportDataSr {
  const ReportDataErrorSr(this.message);
  

@override final  String message;

/// Create a copy of ReportDataSr
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportDataErrorSrCopyWith<ReportDataErrorSr> get copyWith => _$ReportDataErrorSrCopyWithImpl<ReportDataErrorSr>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportDataErrorSr&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReportDataSr.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReportDataErrorSrCopyWith<$Res> implements $ReportDataSrCopyWith<$Res> {
  factory $ReportDataErrorSrCopyWith(ReportDataErrorSr value, $Res Function(ReportDataErrorSr) _then) = _$ReportDataErrorSrCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReportDataErrorSrCopyWithImpl<$Res>
    implements $ReportDataErrorSrCopyWith<$Res> {
  _$ReportDataErrorSrCopyWithImpl(this._self, this._then);

  final ReportDataErrorSr _self;
  final $Res Function(ReportDataErrorSr) _then;

/// Create a copy of ReportDataSr
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ReportDataErrorSr(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
